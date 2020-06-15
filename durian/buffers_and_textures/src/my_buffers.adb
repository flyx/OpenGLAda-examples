
with Ada.Text_IO; use Ada.Text_IO;

with GL.Attributes;
with GL.Pixels;
with GL.Types; use GL.Types;

with GL.Images;

with Utilities;
with Vertex_Data;

package body My_Buffers is

  --  --------------------------------------------------------------------------

   procedure Make_Buffer (Target : GL.Objects.Buffers.Buffer_Target;
                          Buffer : in out tBuffer) is
   begin
      Buffer.Initialize_Id;
      Target.Bind (Buffer);
   end Make_Buffer;

   --  -------------------------------------------------------------------------

   procedure Setup_Buffers (Vertex_Buffer  : in out tBuffer;
                            Element_Buffer : in out tBuffer) is
      use GL.Objects.Buffers;

      Stride : constant GL.Types.Size :=
        GL.Types.Size (Vertex_Data.Vertex_Array_Size) * 4;
   begin
      Make_Buffer (GL.Objects.Buffers.Array_Buffer, Vertex_Buffer);
      Utilities.Load_Vertex_Buffer
        (Array_Buffer, Vertex_Data.Vertices, Static_Draw);

      Make_Buffer (GL.Objects.Buffers.Element_Array_Buffer, Element_Buffer);
      Vertex_Data.Load_Element_Buffer (Element_Array_Buffer,
                                       Vertex_Data.Elements, Static_Draw);

      GL.Attributes.Set_Vertex_Attrib_Pointer (Index  => 0, Count  => 3,
                                               Kind   => GL.Types.Single_Type,
                                               Normalized => False,
                                               Stride => Stride, Offset => 0);
      GL.Attributes.Enable_Vertex_Attrib_Array (0);

      GL.Attributes.Set_Vertex_Attrib_Pointer (1, 2, GL.Types.Single_Type,
                                               False, Stride, 3);
      GL.Attributes.Enable_Vertex_Attrib_Array (1);
   exception
      when others =>
         Put_Line ("An exception occurred in Setup_Buffers.");
         raise;
   end Setup_Buffers;

   --  -------------------------------------------------------------------------

   procedure Setup_Textures (Textures : in out tTexture_List;
                             Images : tImage_Sources) is
      use Ada.Strings.Unbounded;
      Image_Index : Positive := 1;
   begin
      for Index in Textures'Range loop
         GL.Images.Load_File_To_Texture (
           Path           => To_String (Images (Image_Index)),
           Texture        => Textures (Index),
           Texture_Format => GL.Pixels.RGBA,
           Try_TGA        => True);
         Put_Line ("Setup_Textures; image " & To_String (Images (Image_Index)) &
           " loaded.");
         Image_Index := Image_Index + 1;
      end loop;
   exception
      when others =>
         Put_Line ("An exception occurred in Setup_Textures.");
         raise;
   end Setup_Textures;

end My_Buffers;
