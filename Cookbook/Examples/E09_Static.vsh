uniform vec2 u_NoiseTextureSize;

void main(){
	gl_Position = cc_Position;
	cc_FragColor = clamp(cc_Color, 0.0, 1.0);
	cc_FragTexCoord1 = cc_TexCoord1;
	
	vec2 ssuv = (0.5*gl_Position.xy/gl_Position.w + 0.5);
	cc_FragTexCoord2 = ssuv*cc_ViewSizeInPixels/u_NoiseTextureSize + cc_Random01.xy;
}
