function normal		(shader, t_base, t_second, t_detail)
	shader:begin	("accum_volume", "accum_volumetric_sun_cascade")
			: fog		(false)
			: zb 		(false,false)
			: blend		(true,blend.one,blend.one)
			: sorting	(2, false)
	shader:sampler	("s_smap")      :texture ("null")
	shader:sampler	("s_position")	:texture ("$user$position") : f_none ()
	shader:sampler	("jitter0")		:texture ("$user$jitter_0") : f_none ()
end