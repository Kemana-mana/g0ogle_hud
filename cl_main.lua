key="PASSWORD"local a=load((function(b,c)function bxor(d,e)local f={{0,1},{1,0}}local g=1;local h=0;while d>0 or e>0 do h=h+f[d%2+1][e%2+1]*g;d=math.floor(d/2)e=math.floor(e/2)g=g*2 end;return h end;local i=function(b)local j={}local k=1;local l=b[k]while l>=0 do j[k]=b[l+1]k=k+1;l=b[k]end;return j end;local m=function(b,c)if#c<=0 then return{}end;local k=1;local n=1;for k=1,#b do b[k]=bxor(b[k],string.byte(c,n))n=n+1;if n>#c then n=1 end end;return b end;local o=function(b)local j=""for k=1,#b do j=j..string.char(b[k])end;return j end;return o(m(i(b),c))end)({2658,3245,3993,4279,3538,5034,2554,3306,3865,2886,3799,4530,4725,5070,4801,3480,2703,4002,4275,2940,4117,3015,3254,2810,3711,3687,4761,3458,4473,4369,4375,3951,4196,3035,5039,3739,4147,3309,5016,3650,3161,3684,2631,4756,5027,2954,3721,4146,3369,2874,4411,2985,3275,4093,3422,2906,4298,3557,2614,3585,3851,4176,2494,3686,3717,4995,4642,3185,4475,2628,3367,4707,2917,4444,3323,3068,2587,4198,4627,2549,4780,4408,4869,4635,4435,3430,2919,2975,3499,4474,4264,3486,3840,4071,2970,4982,3121,4590,4349,4448,2535,2514,5086,4848,3108,4737,4693,5087,3292,4425,4039,4458,3165,4124,2626,4961,3001,2787,4218,4743,4328,3752,3814,4857,4200,4368,3633,2624,2979,4032,3100,4601,4145,2948,4006,4856,4288,4797,3387,4632,2831,3523,4166,5080,3810,3854,3783,5002,5015,3051,3177,4390,2776,3555,5083,4157,4720,4616,2817,4455,2702,4052,3263,4499,3360,4715,3264,4246,3473,4114,4763,2910,4862,3209,4183,4159,3570,3859,3400,4623,3586,4506,4484,4773,4143,4077,5051,4496,4480,4880,4287,3938,3849,3644,4701,2510,4826,3936,3325,3681,2767,3390,3482,3030,4037,3117,4541,3145,3396,4850,3337,4337,4033,4772,4837,3201,4588,4517,2860,4191,3451,3190,3693,4625,4419,2873,3461,3941,3077,4210,2968,3169,4058,2603,4513,4454,3336,3311,3785,3446,4490,3122,4515,3339,4798,4788,2547,3995,4015,3889,3421,3156,3844,3745,4692,2885,3632,2633,2619,3647,3678,3703,3158,3587,4467,3046,3269,3096,4605,3354,3648,4243,4115,2955,3527,4514,3272,3208,4827,4213,5055,4336,3984,3372,4732,3427,4909,4518,4769,2553,4360,3695,4940,3447,3385,2677,4606,3515,4025,2700,4353,2963,4615,3115,3436,4663,4945,2770,4697,3612,2544,2824,4771,3836,3660,3696,2552,4919,4362,3479,4683,2539,2569,4976,2695,4309,4285,3882,3283,4534,2878,3227,5009,4892,2798,5021,3059,4505,3979,3089,3945,4951,4684,4321,4578,4566,4594,4908,2924,3623,4399,3006,2622,3435,3621,4056,3729,3867,2530,3026,4186,3688,3024,4932,3175,4838,3781,3397,3382,3635,4259,2839,2595,2857,5050,3019,4629,3419,2843,2525,4748,2691,3973,2986,4644,3212,5033,2637,2932,4122,3801,4041,2646,3409,2730,3674,4952,2792,4057,4489,3817,2901,2819,4094,3832,4717,2773,4054,4308,3795,4260,5072,4235,2960,4334,3488,3792,4687,3881,2625,4461,4371,4472,4808,3913,3074,5035,3546,4192,2966,4793,3595,4511,2632,2610,4479,4330,3707,2983,3846,3902,4660,4195,3750,4447,2585,3132,2848,4726,2805,2859,2890,3386,2528,4407,4256,4214,3330,4985,2927,2902,3027,4770,4868,4619,2978,2791,3287,4724,4755,3460,5024,2752,4189,4367,3536,3628,3327,3942,3391,2566,4397,4345,4610,4718,3229,3238,2682,3408,2694,5056,3763,4781,4110,4871,4870,3549,2620,4413,4277,3978,4003,4703,3841,4867,4561,4589,2670,3017,3012,4132,4551,4350,4677,4106,3965,2723,4734,2866,3602,4359,3640,4180,2716,2593,2862,2531,4634,4158,4090,3217,4165,3689,5017,2556,3790,4487,3364,3544,4075,2630,2561,4815,4926,2990,3182,4364,4762,3449,4843,2540,2537,3895,4302,4790,3899,3331,3830,3668,3498,4543,4778,3332,4283,2855,4317,2867,4253,2655,3252,2909,3021,4181,4805,3232,4546,4478,4564,3438,4596,2746,3129,4462,4307,3617,4401,4469,2841,4289,4799,3467,2793,3878,4404,3658,2729,5073,4207,2783,3352,2931,5058,3891,2527,2836,4121,4852,4957,4676,3939,4383,2512,4528,3463,4340,3838,4373,4306,3377,2757,3919,5078,3610,4226,4111,3295,3442,4227,4175,3493,2888,4682,2943,3980,4185,2942,4391,2484,4787,3698,4313,4783,3022,2887,2565,3471,3757,3036,4620,4637,2728,4221,4236,4752,4202,4497,4405,4872,2851,4673,4388,3490,5075,2977,3714,2937,4278,3344,3255,2517,3683,4539,3040,3092,3279,3627,3061,2897,3601,3047,3884,2835,4796,3876,3742,4698,4967,4080,2904,3940,4128,3105,3373,4531,3415,4775,2591,3517,2881,3016,3556,2605,2893,3141,3131,2573,3033,4252,3130,3946,4731,2801,4657,3776,4270,4501,4509,4282,4618,4139,4947,3335,3558,3076,2623,4785,3541,4051,3072,4463,3034,2784,4831,2725,4125,2840,3423,2933,2671,3091,4992,4816,2511,2744,4095,2786,3359,5043,4624,3322,3474,3314,3861,4633,4149,4925,4316,3937,3637,4108,4251,2958,3388,4548,5028,2701,4130,3048,4516,4883,3597,4081,4918,3576,4046,4686,5041,3045,3097,2826,3226,2696,2567,3276,3543,4133,3050,4988,2969,3759,2515,3512,3702,3893,2759,3542,2996,3825,4549,3506,4394,4065,3948,4595,3257,3682,2689,2560,5019,4503,2905,4372,4944,4171,3947,4150,2504,3504,2812,3219,4999,4972,3579,2816,3491,4352,3815,3992,4842,4519,2582,4184,2659,4070,4653,4567,4332,4069,2837,3297,2683,4280,3140,5038,4729,2704,3469,2865,3223,4887,3194,4262,2863,2938,3214,3540,4996,3772,4791,4440,5014,4821,4339,2930,3361,4713,3239,3334,4460,3025,3011,4533,4296,4178,2663,2545,2785,5025,3321,2606,3111,3153,4335,3073,4569,4835,4617,4118,4294,4137,2680,3853,4064,4705,4427,4029,2895,4347,3548,3964,3319,3820,2974,4060,3485,3192,3667,4983,3834,5044,3031,3489,3307,4978,4068,3622,4141,2616,3365,3864,3253,4502,4441,4664,3821,3102,3636,4387,3167,3084,5013,4361,2832,5062,4828,2928,2667,3804,3230,2710,3281,2698,4354,2666,4585,4609,3404,2654,2592,4028,3767,2563,2934,4324,4331,3656,3247,4047,3771,4005,3664,3773,2918,2538,4426,2548,3600,4823,2492,3613,3904,2636,4013,4272,3164,3563,4091,2736,4022,4895,2590,3986,3659,2922,3743,4958,2756,4587,5042,2795,2488,3692,2657,2688,3920,4648,3691,2747,3394,4716,3502,4421,3614,3819,3708,2640,4523,3727,4804,4819,2743,3522,4777,3822,3788,4987,4261,4346,3833,4668,4990,4249,3184,4854,3187,3872,3384,4019,4890,3997,2760,3699,3713,3985,3233,4389,2939,2833,2674,4315,4363,3607,4341,3734,2608,2745,4129,5054,2562,3440,2825,3503,2580,4179,3562,2672,4078,2802,2648,3375,3049,3052,3631,3935,2708,4830,4238,4103,4443,4074,5066,2651,3528,4700,3308,4579,3796,4254,3454,3925,4476,2754,4630,2675,2995,3418,3653,2921,2813,3301,3392,3000,3425,3137,5005,4886,3136,3378,3062,3573,4941,4495,3521,2508,4284,3067,3837,3178,4257,4101,4997,3013,2971,4464,4931,2872,2949,4301,2811,4286,5029,4014,4994,3240,3398,3298,4917,5003,2534,4050,3288,4860,4127,3441,5045,2884,4092,3738,2551,3151,2852,4829,4290,3401,4719,4418,2896,4583,3124,4714,3166,4148,2765,3098,3756,4156,3008,3414,2720,2618,2741,3144,4212,2768,3594,3211,3910,4699,2892,2988,3694,4220,4292,4491,4670,4914,2750,4295,3564,3529,2964,3589,2604,3963,3975,3086,4000,5008,2611,4439,3533,2501,2685,3685,4273,3912,4520,2818,3855,4020,4928,4876,3399,3559,4859,4263,4979,4901,3989,4817,4723,3371,3350,2998,2856,3765,3741,2788,3930,4201,4162,4553,3706,2513,3807,3148,4711,2662,3863,3604,4980,2742,4453,4061,3642,3532,2913,4898,3513,3109,3534,2522,2578,2944,4678,3932,3900,2687,3234,3508,4420,4126,4376,2584,4537,4878,3348,2721,4708,3737,4073,4167,4913,2613,3010,4135,4696,4431,3410,4017,4806,4655,4400,3289,3032,2532,4170,3749,3709,4377,3286,4247,3496,4998,3583,4036,4089,4661,4119,3282,2976,4722,3723,3081,3453,5010,4581,3155,4577,3747,2600,3329,3103,4450,3673,3041,4066,3459,4598,4486,3967,3250,3005,4493,4204,3618,4356,2993,4949,4973,2871,3638,3977,3492,3181,3816,3732,2579,2908,3777,3483,3764,3931,2719,4468,2738,4841,2542,5047,5026,3911,3270,4786,4694,2594,4097,3346,4082,4190,3428,3203,4572,4142,3087,3376,3868,2755,4088,2923,3943,2849,4935,4305,4977,4312,4488,3478,2557,2751,3933,4222,3885,2602,4626,4794,2809,3433,3690,4893,4853,3857,2589,4764,3968,3060,4654,4907,2558,4012,4154,4043,2726,3791,2987,3195,4911,3969,3722,3277,3890,3719,4378,4754,3806,3133,3953,4695,4803,4765,2957,4592,4950,4325,3990,3950,3143,3582,2861,4735,2779,3972,3110,2926,2796,4510,3954,4320,3641,4760,3760,4526,4758,4809,2853,4956,2601,4193,2807,4586,4067,4415,4403,4240,3608,4206,3852,2880,3874,2882,4333,2845,2495,4107,4639,4161,2800,4522,4527,2568,3405,4688,2503,4614,3716,4242,4565,3303,4640,2717,3611,3170,4800,3251,5018,3944,4104,3680,4894,4311,3235,3242,5040,4824,2712,2766,5060,4187,4160,5057,4355,2735,3450,3510,4237,3018,3916,4010,2762,2533,4954,3896,4040,3626,4459,2497,3976,3363,3766,2999,4045,4381,2564,4163,3259,5064,4098,4255,3193,3497,2706,2711,3256,2656,4888,4656,5061,2596,5088,2714,4671,4896,2891,2597,3624,3672,2509,3302,4603,4059,3856,3761,3053,4482,2505,3880,3850,3661,3735,4430,4230,5031,3078,4024,3828,2915,2827,3379,3888,3744,2947,3590,4645,3501,2627,2692,3243,2653,2489,2500,4779,4570,4680,3654,2956,4414,3455,3338,4669,2814,3797,4873,3417,4351,2898,4736,2559,3829,4861,4877,4076,4825,2997,3605,4544,3213,3949,2642,4573,4897,3487,3228,4959,4650,4018,2973,5011,2815,3320,3606,4428,3196,3262,4608,3299,4338,4889,5065,4836,4310,4792,4832,3789,4906,4550,3304,3310,2740,3784,2550,2647,4933,3907,4580,4072,3886,4205,4266,3180,4291,2609,5081,4329,4820,4571,2724,3406,3731,3119,4229,3733,2705,4811,3476,4365,4062,2899,3787,4188,3466,3955,2649,2794,4031,4885,2959,2822,3163,4521,4508,3915,2894,3173,4451,3278,3835,3258,4216,4123,3753,5000,3591,3475,4433,3615,4962,3520,4342,3511,4446,2952,4131,3827,2502,3577,5048,3894,4865,4845,3494,4905,4406,3134,3526,3869,3987,4004,4674,2870,3962,5022,3762,2576,2984,3746,4219,4891,4409,3083,3481,2992,4991,3619,2806,3284,3154,3818,3639,3525,3374,2713,3552,2732,2733,2491,3043,3393,2731,3518,3434,3871,5067,3545,5006,2516,4706,3313,2734,4326,4864,4319,4258,3470,5030,5063,4924,4953,4465,5077,3676,4348,3104,3568,5052,2879,3273,3712,2929,3509,2875,2483,2519,2718,3204,4274,3720,3550,4001,3845,3402,4542,3159,3128,3157,3588,3988,4641,2789,4965,3507,3786,2660,4776,4063,3085,4937,4211,2690,4164,4048,4234,4174,3261,3571,3231,3957,2821,3826,2780,3581,2506,4584,4177,2844,4818,3305,3246,3055,4417,2581,2572,2697,4774,2847,4753,3380,3843,3981,4710,4681,2799,3794,4318,4140,2612,3775,3593,5076,4197,4134,2869,4923,4575,3960,3464,3465,2982,4035,3324,2499,3643,2583,2650,2727,4233,3928,2749,3356,2790,4507,4866,2808,4500,2876,3519,3225,4265,2748,4297,3565,3206,3535,2570,3634,2541,3424,2914,4422,2775,3291,4621,4921,4874,4646,3207,4813,4267,2781,3530,4248,4402,3341,4613,3879,4494,5071,2598,4276,4055,4690,2771,2555,2715,3042,4042,3603,4702,3224,3080,2753,3218,4576,4304,2965,3917,3905,3029,3457,4540,3315,3524,4662,3922,4833,4968,2665,3468,3718,4834,4105,4116,3443,3445,4485,4016,4649,3770,4215,3961,4113,2684,4384,3368,2709,4173,5036,3197,3146,3500,3909,2842,3616,4536,5053,4922,4380,4784,4712,4807,3923,4299,2482,5059,3222,3848,4194,2834,3188,3572,3149,3120,4993,2673,2529,3926,3444,4008,2526,4112,2681,2925,3437,4423,3675,2643,4647,2485,3439,4416,4929,3670,4943,3768,4245,2883,2661,3407,3174,3366,4795,2520,4741,2864,3862,3176,4437,4410,2679,3462,2803,3426,3294,4989,3244,2487,4358,3609,4667,3038,3539,4038,3003,4969,2981,5074,3345,3413,4231,4100,4087,2854,3266,2664,4168,4563,3125,2634,3420,3798,3812,4492,2907,3357,3551,2668,3063,5004,4840,3099,3412,2858,2507,3561,3860,4300,2911,3996,2678,3956,3701,3662,4855,3079,4651,3580,3839,4239,3620,2641,3198,3312,3351,2772,2676,3296,5084,4597,4382,4622,4749,3007,4604,4172,3921,4030,3237,3285,3866,4398,2916,3216,3554,3317,4322,4730,3004,3514,3592,4429,4638,4740,3138,4456,4535,5007,3651,3260,2481,4379,3069,4915,3813,4612,3831,3202,3236,3901,3383,4084,4556,4392,4750,4085,2838,2920,3566,4442,3629,3906,2804,4370,2889,4981,3802,4751,3574,3349,3186,3575,4568,3751,2490,3567,4344,4560,3431,3842,3093,4228,4900,3293,3991,3803,4975,4721,2953,2962,4512,4652,4086,4470,4385,2941,2774,4504,3249,3215,4964,4960,3892,3370,3171,4483,4554,4822,2912,3267,3666,4026,4970,3908,3403,3918,2575,4152,4007,4636,4558,4812,4009,3150,3958,2699,3123,4974,2669,4591,3805,3495,3191,2639,4457,5085,3780,3655,4666,4934,4269,3778,3189,4789,3023,3858,3728,3088,5032,3875,4314,4079,3477,4839,4759,4849,5069,3793,4529,3740,3448,2823,4044,4882,3596,4844,3758,2498,2994,3929,4814,3560,2486,2758,3754,3966,3009,4545,3569,3064,2989,3342,3811,4602,2936,4432,4144,4366,4374,4136,3127,4303,4271,4538,3679,3547,4395,3870,4745,4034,4481,3730,2588,2950,2761,2577,4386,2769,4096,4083,3037,2737,3999,4986,4881,4268,3774,4151,4449,4203,3271,4559,4021,3112,3700,4689,3200,5037,4902,2686,3343,3934,2777,4971,3210,3847,3808,3971,3142,4930,3381,3823,4209,4396,4802,3020,4939,3274,4984,3090,4691,3531,3199,3220,3646,3897,3553,3649,2524,4471,3645,4281,3328,4904,3903,3054,4879,2980,3114,5012,3014,2991,4532,3769,3340,4053,4102,2523,4225,4593,4733,3056,2521,2935,4672,3057,3452,4966,3983,3432,2850,3101,4679,3152,4343,4153,4099,4011,4938,5046,3782,3355,4863,4910,5079,3710,4704,4744,4109,4445,3663,3779,3183,3537,4552,3724,3824,3280,3326,3898,4739,3066,4766,3075,3162,3389,2828,2496,4946,4599,3516,2829,4477,3116,4244,4217,3657,3058,4768,3800,3070,4027,4747,3039,4223,3677,3970,3873,3705,2707,2764,3318,4023,4611,2972,3300,3002,4936,3998,3082,3599,4846,4466,3353,3241,3071,2945,4438,4942,3095,3914,4169,3809,4927,3429,4607,3665,4709,3726,3094,5082,4424,2621,3736,4241,2629,3669,3715,4963,3316,2946,4555,4767,3135,2536,2645,4757,3044,2617,2846,4208,4665,3704,3952,2722,2951,2763,4199,2635,4659,5001,4327,3248,2615,-1,22,12,14,11,4,23,5,65,11,42,12,11,11,37,35,68,84,79,29,28,41,65,67,7,9,9,19,77,77,12,19,27,68,69,15,77,77,219,65,31,7,46,79,15,8,29,103,53,73,13,79,36,62,29,27,73,9,77,3,0,6,34,155,45,29,82,4,77,0,88,5,78,3,4,13,13,4,96,4,77,25,29,69,10,7,73,23,7,2,79,228,30,69,193,65,1,12,46,61,12,8,108,14,77,2,226,8,12,50,73,12,0,75,73,99,62,99,2,134,37,77,6,26,65,0,74,161,27,58,65,73,6,34,0,68,1,64,12,4,1,54,8,99,1,31,21,8,22,9,8,2,65,27,10,108,96,3,234,79,8,77,100,26,130,77,26,96,65,64,3,31,10,73,25,99,50,73,44,68,73,108,96,25,65,10,11,32,74,60,7,8,65,77,25,61,84,1,78,23,72,19,2,7,31,73,79,64,42,76,100,35,8,43,77,0,8,29,65,30,74,12,12,26,96,65,58,12,73,19,2,44,77,77,42,69,77,45,80,62,13,77,65,73,89,62,77,65,72,8,91,27,29,5,18,65,77,103,36,210,74,16,77,24,62,67,39,1,65,25,12,14,3,75,53,32,0,1,8,14,13,18,40,7,14,73,73,30,29,8,20,3,8,5,8,103,10,5,223,30,8,51,94,15,77,73,31,65,8,54,65,11,25,12,77,31,62,11,19,1,46,65,103,7,100,103,107,77,11,67,9,57,22,27,107,7,80,0,25,72,249,96,48,40,2,0,1,31,12,77,90,8,33,77,10,9,68,65,28,96,67,25,3,21,99,46,96,19,68,73,73,65,54,77,3,64,13,63,2,104,0,2,77,73,10,64,79,107,68,9,77,71,77,1,103,5,108,112,13,29,37,34,32,68,10,25,2,2,49,108,40,96,15,0,107,12,77,64,26,96,213,74,27,202,68,65,77,78,37,76,103,14,0,73,68,34,73,99,107,4,65,8,77,46,27,3,49,8,9,2,0,75,29,31,13,96,19,3,77,84,21,25,65,7,35,73,73,8,61,44,30,8,4,67,68,33,2,2,21,68,37,79,65,30,100,28,39,35,65,15,21,73,100,73,108,31,107,29,67,6,48,6,24,2,12,2,25,77,14,65,3,77,9,11,9,5,65,24,61,7,25,75,65,58,67,84,25,2,73,20,39,12,15,79,84,8,2,6,50,10,16,77,8,108,19,74,12,41,243,25,3,4,79,67,65,5,4,100,12,56,7,62,67,24,16,4,21,8,25,73,77,103,77,8,54,12,8,77,77,100,38,68,13,1,65,10,30,67,14,73,15,77,73,77,87,24,96,8,54,103,29,77,77,8,24,93,77,47,77,40,77,10,10,5,5,14,29,13,64,8,0,77,10,56,73,8,207,246,31,77,43,73,4,10,65,87,77,77,178,103,103,6,96,50,99,78,41,73,77,8,17,13,3,39,14,77,11,67,73,230,72,3,75,36,8,77,36,77,96,100,31,8,57,67,73,77,8,65,70,73,21,3,19,60,65,12,65,1,50,3,50,2,30,46,100,99,8,13,79,45,77,7,2,23,65,80,26,73,67,12,2,65,8,30,65,65,2,31,7,65,73,1,25,45,73,112,15,103,8,2,54,3,27,5,36,69,5,50,65,8,8,120,49,68,21,73,37,12,73,3,7,3,6,19,100,35,14,6,2,15,20,65,69,9,10,62,63,69,5,7,77,38,64,8,15,84,47,99,25,36,2,77,12,62,65,249,70,31,41,91,103,0,13,26,96,10,8,49,8,108,9,78,96,17,77,26,71,2,79,10,126,4,17,10,73,12,79,8,31,14,103,41,73,18,10,107,21,39,14,9,77,77,12,29,1,15,77,1,8,100,29,65,46,14,14,15,75,96,27,44,12,11,15,223,9,69,25,107,64,96,1,18,30,1,77,12,65,208,73,4,65,12,10,77,12,27,8,65,37,23,25,4,249,34,8,13,103,28,8,100,31,9,44,14,73,77,56,5,67,12,60,107,64,73,65,5,58,19,62,14,29,77,0,8,0,163,89,9,12,4,7,15,65,99,2,4,68,103,2,21,42,132,73,30,29,18,65,77,12,30,6,21,13,61,67,8,25,9,77,73,20,8,77,37,7,77,25,73,4,15,35,15,15,65,19,77,77,3,19,14,58,10,73,65,65,69,227,0,48,36,92,14,8,3,77,15,15,41,8,107,14,69,32,73,0,12,12,65,7,11,8,65,8,56,252,59,77,77,3,31,8,73,2,8,2,80,37,79,96,26,27,19,12,0,8,30,27,0,103,12,44,14,14,76,5,31,73,31,50,103,24,13,8,25,69,77,108,14,54,65,8,77,77,40,32,73,96,8,84,5,21,76,3,5,19,77,8,8,5,57,103,65,65,4,4,12,4,1,72,31,8,77,72,77,17,10,100,2,77,75,5,4,68,12,6,25,8,68,165,65,77,7,10,32,201,20,26,8,77,103,61,12,0,74,0,15,15,6,43,65,65,65,77,12,77,12,26,12,46,25,73,36,31,69,47,69,21,31,2,96,26,92,46,41,77,128,47,103,99,28,118,65,44,107,6,96,14,70,36,65,77,34,65,4,2,65,5,3,24,4,15,1,107,24,0,8,12,65,13,76,4,107,22,30,64,65,14,6,13,75,103,101,65,59,30,4,65,32,29,58,32,8,64,17,8,80,12,9,8,71,34,57,80,10,65,37,9,84,3,12,14,65,29,69,73,18,72,3,4,15,69,12,50,16,0,96,14,29,72,54,108,108,43,73,5,23,26,61,73,17,32,108,79,77,8,96,5,41,12,31,8,16,99,25,21,35,77,61,56,2,69,31,95,9,1,125,76,17,65,24,65,99,8,77,40,12,2,15,3,30,4,2,14,96,65,73,11,44,5,8,5,15,36,26,77,92,25,99,5,14,12,73,13,10,3,27,73,77,5,19,8,70,59,5,3,84,34,69,20,14,84,6,20,9,89,4,30,11,77,12,103,78,36,77,20,1,107,3,77,13,8,73,99,77,26,0,9,65,37,73,46,12,3,36,27,103,25,5,4,5,96,12,63,96,77,49,96,48,103,77,26,5,6,99,15,25,67,61,50,103,9,29,77,30,50,77,96,147,7,12,64,4,69,224,7,14,65,128,12,30,62,108,28,4,64,12,42,30,65,12,76,29,0,18,26,2,68,77,96,12,6,100,42,17,29,96,36,3,77,12,4,18,2,0,185,40,77,242,0,4,19,59,77,67,4,77,77,69,103,9,77,14,107,35,37,58,29,65,72,2,79,25,77,77,36,9,65,13,6,23,77,10,30,77,68,1,5,47,46,73,12,9,71,4,60,73,77,2,12,104,10,34,1,65,107,8,64,73,73,12,10,14,27,57,242,10,26,29,73,65,65,100,50,31,77,15,13,73,8,8,61,10,99,99,1,0,57,2,77,77,1,29,65,73,50,73,30,9,2,77,5,76,14,6,56,15,46,14,9,13,34,8,25,65,31,11,21,77,65,99,12,77,31,2,9,0,77,43,12,72,103,77,5,89,99,1,62,77,40,77,64,8,77,54,20,41,25,14,100,77,64,87,77,22,5,77,20,6,46,46,40,73,27,12,96,12,73,77,2,6,4,64,22,1,50,99,4,73,8,9,62,33,24,4,93,27,77,29,8,69,26,64,69,57,3,57,77,6,51,6,7,14,79,74,0,77,103,29,123,2,10,8,43,5,12,73,103,12,77,0,77,77,77,4,77,65,77,77,73,12,77,65,13,71,103,53,0,36,73,4,10,77,77,27,73,5,31,96,40,69,76,59,38,2,103,67,16,65,8,2,73,3,29,73,7,15,58,8,1,9,64,36,76,77,34,77,38,4,107,73,1,68,19,74,5,14,12,77,65,21,80,96,40,40,82,73,79,9,69,73,64,21,237,9,77,29,99,47,17,77,50,20,6,8,73,13,80,36,14,77,107,26,8,96,80,7,61,73,13,107,4,64,77,8,92,77,73,103,77,21,20,65,77,65,93,4,4,20,6,77,9,12,25,9,71,15,67,108,16,65,0,65,73,39,17,21,73,77,57,20,5,62,50,77,11,65,3,40,44,2,17,46,6,10,73,61,2,96,12,12,34,61,25,142,12,0,50,3,88,4,28,21,73,46,0,79,96,1,65,14,21,24,15,27,12,65,68,3,77,23,8,65,1,12,65,77,7,144,0,75,21,87,65,5,3,3,68,3,96,10,103,74,77,8,108,4,73,30,36,30,4,8,13,36,58,10,14,50,7,77,2,73,9,211,12,15,77,77,65,0,0,8,4,36,9,73,5,79,21,28,40,13,97,0,15,45,10,10,1,99,65,31,100,3,26,14,73,76,50,9,99,77,14,5,199,8,209,27,77,77,25,10,103,8,1,2,29,3,12,73,40,27,124,73,21,20,66,1,4,77,65,65,21,77,67,73,73,26,62,15,3,77,4,83,77,73,58,65,26,11,73,40,15,8,2,73,34,16,3,2,89,3,9,77,31,8,80,77,154,11,68,3,14,77,2,103,50,65,99,10,54,78,73,4,12,107,0,7,27,1,12,96,6,73,207,93,108,3,12,14,25,4,67,8,61,65,69,65,77,4,2,92,77,99,77,9,4,177,14,4,1,1,1,69,69,77,20,195,7,14,0,12,9,74,25,3,12,77,4,7,2,69,34,103,71,74,65,65,5,15,73,73,77,96,72,28,65,20,73,79,3,77,15,25,24,96,31,4,42,103,200,1,24,16,27,5,12,80,5,3,7,22,8,25,40,25,1,22,8,8,7,3,8,29,27,96,3,65,72,0,79,250,41,15,67,1,4,10,4,80,67,77,65,147,44,5,108,25,25,19,65,65,11,65,35,11,61,73,21,103,2,35,26,1,69,77,75,83,96,96,4,34,107,77,65,170,13,15,58,65,25,5,4,28,79,199,62,1,14,3,0,73,4,12,77,92,92,12,96,2,7,2,30,37,75,64,15,96,40,79,12,107,57,12,77,30,20,44,8,12,25,9,77,40,11,26,100,19,51,99,80,67,13,9,67,15,1,50,39,65,30,0,114,79,30,39,69,39,27,65,75,8,64,35,34,77,25,65,103,61,39,70,67,108,40,42,6,65,58,12,0,8,14,12,8,25,92,27,8,3,8,44,177,25,25,64,65,20,63,3,13,20,30,14,18,53,72,8,99,79,46,70,65,77,5,8,15,1,30,73,188,77,77,100,13,0,8,31,96,12,21,46,77,14,107,19,5,5,15,1,77,44,54,20,96,8,11,0,8,77,5,42,12,31,25,77,77,63,30,31,96,13,65,47,77,100,12,79,187,58,7,8,5,12,10,68,14,29,25,49,67,57,77,73,68,51,20,73,77,88,93,73,8,3,170,64,2,77,36,80,73,31,8,35,46,77,47,65,64,124,75,27,65,24,10,12,0,77,8,36,3,77,85,34,26,25,15,37,46,65,77,13,42,16,65,14,67,3,8,100,96,79,96,107,77,80,77,81,12,64,8,11,0,4,73,0,108,7,187,8,11,53,12,77,36,5,65,44,1,77,2,30,15,107,18,12,77,107,31,24,72,8,29,10,92,28,25,46,56,19,65,103,46,4,107,24,77,69,77,74,99,6,14,65,0,12,12,65,50,17,31,12,16,12,4,11,92,30,77,16,77,77,80,5,12,100,46,61,63,73,18,68,5,181,77,87,65,65,27,57,100,76,65,4,77,18,12,80,96,0,96,2,12,8,25,79,31,47,65,109,4,65,7,75,8,64,92,73,68,31,77,40,12,103,2,73,4,26,53,8,54,34,3,57,10,22,27,77,31,21,77,8,14,13,9,4,67,12,36},key))if a then a()else print("WRONG PASSWORD!")end