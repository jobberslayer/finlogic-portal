class CreateIncomeStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :income_statements do |t|
      t.integer :location_id
      t.string :key1
      t.decimal :amount1, precision: 15, scale: 2
      t.integer :col1
      t.string :key2
      t.decimal :amount2, precision: 15, scale: 2
      t.integer :col2
      t.string :key3
      t.decimal :amount3, precision: 15, scale: 2
      t.integer :col3
      t.string :key4
      t.decimal :amount4, precision: 15, scale: 2
      t.integer :col4
      t.string :key5
      t.decimal :amount5, precision: 15, scale: 2
      t.integer :col5
      t.string :key6
      t.decimal :amount6, precision: 15, scale: 2
      t.integer :col6
      t.string :key7
      t.decimal :amount7, precision: 15, scale: 2
      t.integer :col7
      t.string :key8
      t.decimal :amount8, precision: 15, scale: 2
      t.integer :col8
      t.string :key9
      t.decimal :amount9, precision: 15, scale: 2
      t.integer :col9
      t.string :key10
      t.decimal :amount10, precision: 10, scale: 2
      t.integer :col10
      t.string :key11
      t.decimal :amount11, precision: 15, scale: 2
      t.integer :col11
      t.string :key12
      t.decimal :amount12, precision: 15, scale: 2
      t.integer :col12
      t.string :key13
      t.decimal :amount13, precision: 15, scale: 2
      t.integer :col13
      t.string :key14
      t.decimal :amount14, precision: 15, scale: 2
      t.integer :col14
      t.string :key15
      t.decimal :amount15, precision: 15, scale: 2
      t.integer :col15
      t.string :key16
      t.decimal :amount16, precision: 15, scale: 2
      t.integer :col16
      t.string :key17
      t.decimal :amount17, precision: 15, scale: 2
      t.integer :col17
      t.string :key18
      t.decimal :amount18, precision: 15, scale: 2
      t.integer :col18
      t.string :key19
      t.decimal :amount19, precision: 15, scale: 2
      t.integer :col19
      t.string :key20
      t.decimal :amount20, precision: 15, scale: 2
      t.integer :col20
      t.string :key21
      t.decimal :amount21, precision: 15, scale: 2
      t.integer :col21
      t.string :key22
      t.decimal :amount22, precision: 15, scale: 2
      t.integer :col22
      t.string :key23
      t.decimal :amount23, precision: 15, scale: 2
      t.integer :col23
      t.string :key24
      t.decimal :amount24, precision: 15, scale: 2
      t.integer :col24
      t.string :key25
      t.decimal :amount25, precision: 15, scale: 2
      t.integer :col25
      t.string :key26
      t.decimal :amount26, precision: 15, scale: 2
      t.integer :col26
      t.string :key27
      t.decimal :amount27, precision: 15, scale: 2
      t.integer :col27
      t.string :key28
      t.decimal :amount28, precision: 15, scale: 2
      t.integer :col28
      t.string :key29
      t.decimal :amount29, precision: 15, scale: 2
      t.integer :col29
      t.string :key30
      t.decimal :amount30, precision: 15, scale: 2
      t.integer :col30
      t.string :key31
      t.decimal :amount31, precision: 15, scale: 2
      t.integer :col31
      t.string :key32
      t.decimal :amount32, precision: 15, scale: 2
      t.integer :col32
      t.string :key33
      t.decimal :amount33, precision: 15, scale: 2
      t.integer :col33
      t.string :key34
      t.decimal :amount34, precision: 15, scale: 2
      t.integer :col34
      t.string :key35
      t.decimal :amount35, precision: 15, scale: 2
      t.integer :col35
      t.string :key36
      t.decimal :amount36, precision: 15, scale: 2
      t.integer :col36
      t.string :key37
      t.decimal :amount37, precision: 15, scale: 2
      t.integer :col37
      t.string :key38
      t.decimal :amount38, precision: 15, scale: 2
      t.integer :col38
      t.string :key39
      t.decimal :amount39, precision: 15, scale: 2
      t.integer :col39
      t.string :key40
      t.decimal :amount40, precision: 15, scale: 2
      t.integer :col40
      t.string :key41
      t.decimal :amount41, precision: 15, scale: 2
      t.integer :col41
      t.string :key42
      t.decimal :amount42, precision: 15, scale: 2
      t.integer :col42
      t.string :key43
      t.decimal :amount43, precision: 15, scale: 2
      t.integer :col43
      t.string :key44
      t.decimal :amount44, precision: 15, scale: 2
      t.integer :col44
      t.string :key45
      t.decimal :amount45, precision: 15, scale: 2
      t.integer :col45
      t.string :key46
      t.decimal :amount46, precision: 15, scale: 2
      t.integer :col46
      t.string :key47
      t.decimal :amount47, precision: 15, scale: 2
      t.integer :col47
      t.string :key48
      t.decimal :amount48, precision: 15, scale: 2
      t.integer :col48
      t.string :key49
      t.decimal :amount49, precision: 15, scale: 2
      t.integer :col49
      t.string :key50
      t.decimal :amount50, precision: 15, scale: 2
      t.integer :col50
      t.string :key51
      t.decimal :amount51, precision: 15, scale: 2
      t.integer :col51
      t.string :key52
      t.decimal :amount52, precision: 15, scale: 2
      t.integer :col52
      t.string :key53
      t.decimal :amount53, precision: 15, scale: 2
      t.integer :col53
      t.string :key54
      t.decimal :amount54, precision: 15, scale: 2
      t.integer :col54
      t.string :key55
      t.decimal :amount55, precision: 15, scale: 2
      t.integer :col55
      t.string :key56
      t.decimal :amount56, precision: 15, scale: 2
      t.integer :col56
      t.string :key57
      t.decimal :amount57, precision: 15, scale: 2
      t.integer :col57
      t.string :key58
      t.decimal :amount58, precision: 15, scale: 2
      t.integer :col58
      t.string :key59
      t.decimal :amount59, precision: 15, scale: 2
      t.integer :col59
      t.string :key60
      t.decimal :amount60, precision: 15, scale: 2
      t.integer :col60
      t.string :key61
      t.decimal :amount61, precision: 15, scale: 2
      t.integer :col61
      t.string :key62
      t.decimal :amount62, precision: 15, scale: 2
      t.integer :col62
      t.string :key63
      t.decimal :amount63, precision: 15, scale: 2
      t.integer :col63
      t.string :key64
      t.decimal :amount64, precision: 15, scale: 2
      t.integer :col64
      t.string :key65
      t.decimal :amount65, precision: 15, scale: 2
      t.integer :col65
      t.string :key66
      t.decimal :amount66, precision: 15, scale: 2
      t.integer :col66
      t.string :key67
      t.decimal :amount67, precision: 15, scale: 2
      t.integer :col67
      t.string :key68
      t.decimal :amount68, precision: 15, scale: 2
      t.integer :col68
      t.string :key69
      t.decimal :amount69, precision: 15, scale: 2
      t.integer :col69
      t.string :key70
      t.decimal :amount70, precision: 15, scale: 2
      t.integer :col70
      t.string :key71
      t.decimal :amount71, precision: 15, scale: 2
      t.integer :col71
      t.string :key72
      t.decimal :amount72, precision: 15, scale: 2
      t.integer :col72
      t.string :key73
      t.decimal :amount73, precision: 15, scale: 2
      t.integer :col73
      t.string :key74
      t.decimal :amount74, precision: 15, scale: 2
      t.integer :col74
      t.string :key75
      t.decimal :amount75, precision: 15, scale: 2
      t.integer :col75
      t.string :key76
      t.decimal :amount76, precision: 15, scale: 2
      t.integer :col76
      t.string :key77
      t.decimal :amount77, precision: 15, scale: 2
      t.integer :col77
      t.string :key78
      t.decimal :amount78, precision: 15, scale: 2
      t.integer :col78
      t.string :key79
      t.decimal :amount79, precision: 15, scale: 2
      t.integer :col79
      t.string :key80
      t.decimal :amount80, precision: 15, scale: 2
      t.integer :col80
      t.string :key81
      t.decimal :amount81, precision: 15, scale: 2
      t.integer :col81
      t.string :key82
      t.decimal :amount82, precision: 15, scale: 2
      t.integer :col82
      t.string :key83
      t.decimal :amount83, precision: 15, scale: 2
      t.integer :col83
      t.string :key84
      t.decimal :amount84, precision: 15, scale: 2
      t.integer :col84
      t.string :key85
      t.decimal :amount85, precision: 15, scale: 2
      t.integer :col85
      t.string :key86
      t.decimal :amount86, precision: 15, scale: 2
      t.integer :col86
      t.string :key87
      t.decimal :amount87, precision: 15, scale: 2
      t.integer :col87
      t.string :key88
      t.decimal :amount88, precision: 15, scale: 2
      t.integer :col88
      t.string :key89
      t.decimal :amount89, precision: 15, scale: 2
      t.integer :col89
      t.string :key90
      t.decimal :amount90, precision: 15, scale: 2
      t.integer :col90
      t.string :key91
      t.decimal :amount91, precision: 15, scale: 2
      t.integer :col91
      t.string :key92
      t.decimal :amount92, precision: 15, scale: 2
      t.integer :col92
      t.string :key93
      t.decimal :amount93, precision: 15, scale: 2
      t.integer :col93
      t.string :key94
      t.decimal :amount94, precision: 15, scale: 2
      t.integer :col94
      t.string :key95
      t.decimal :amount95, precision: 15, scale: 2
      t.integer :col95
      t.string :key96
      t.decimal :amount96, precision: 15, scale: 2
      t.integer :col96
      t.string :key97
      t.decimal :amount97, precision: 15, scale: 2
      t.integer :col97
      t.string :key98
      t.decimal :amount98, precision: 15, scale: 2
      t.integer :col98
      t.string :key99
      t.decimal :amount99, precision: 15, scale: 2
      t.integer :col99
      t.string :key100
      t.decimal :amount100, precision: 15, scale: 2
      t.integer :col100
      t.string :key101
      t.decimal :amount101, precision: 15, scale: 2
      t.integer :col101
      t.string :key102
      t.decimal :amount102, precision: 15, scale: 2
      t.integer :col102
      t.string :key103
      t.decimal :amount103, precision: 15, scale: 2
      t.integer :col103
      t.string :key104
      t.decimal :amount104, precision: 15, scale: 2
      t.integer :col104
      t.string :key105
      t.decimal :amount105, precision: 15, scale: 2
      t.integer :col105
      t.string :key106
      t.decimal :amount106, precision: 15, scale: 2
      t.integer :col106
      t.string :key107
      t.decimal :amount107, precision: 15, scale: 2
      t.integer :col107
      t.string :key108
      t.decimal :amount108, precision: 15, scale: 2
      t.integer :col108
      t.string :key109
      t.decimal :amount109, precision: 15, scale: 2
      t.integer :col109
      t.string :key110
      t.decimal :amount110, precision: 10, scale: 2
      t.integer :col110
      t.string :key111
      t.decimal :amount111, precision: 15, scale: 2
      t.integer :col111
      t.string :key112
      t.decimal :amount112, precision: 15, scale: 2
      t.integer :col112
      t.string :key113
      t.decimal :amount113, precision: 15, scale: 2
      t.integer :col113
      t.string :key114
      t.decimal :amount114, precision: 15, scale: 2
      t.integer :col114
      t.string :key115
      t.decimal :amount115, precision: 15, scale: 2
      t.integer :col115
      t.string :key116
      t.decimal :amount116, precision: 15, scale: 2
      t.integer :col116
      t.string :key117
      t.decimal :amount117, precision: 15, scale: 2
      t.integer :col117
      t.string :key118
      t.decimal :amount118, precision: 15, scale: 2
      t.integer :col118
      t.string :key119
      t.decimal :amount119, precision: 15, scale: 2
      t.integer :col119
      t.string :key120
      t.decimal :amount120, precision: 15, scale: 2
      t.integer :col120
      t.string :key121
      t.decimal :amount121, precision: 15, scale: 2
      t.integer :col121
      t.string :key122
      t.decimal :amount122, precision: 15, scale: 2
      t.integer :col122
      t.string :key123
      t.decimal :amount123, precision: 15, scale: 2
      t.integer :col123
      t.string :key124
      t.decimal :amount124, precision: 15, scale: 2
      t.integer :col124
      t.string :key125
      t.decimal :amount125, precision: 15, scale: 2
      t.integer :col125
      t.string :key126
      t.decimal :amount126, precision: 15, scale: 2
      t.integer :col126
      t.string :key127
      t.decimal :amount127, precision: 15, scale: 2
      t.integer :col127
      t.string :key128
      t.decimal :amount128, precision: 15, scale: 2
      t.integer :col128
      t.string :key129
      t.decimal :amount129, precision: 15, scale: 2
      t.integer :col129
      t.string :key130
      t.decimal :amount130, precision: 15, scale: 2
      t.integer :col130
      t.string :key131
      t.decimal :amount131, precision: 15, scale: 2
      t.integer :col131
      t.string :key132
      t.decimal :amount132, precision: 15, scale: 2
      t.integer :col132
      t.string :key133
      t.decimal :amount133, precision: 15, scale: 2
      t.integer :col133
      t.string :key134
      t.decimal :amount134, precision: 15, scale: 2
      t.integer :col134
      t.string :key135
      t.decimal :amount135, precision: 15, scale: 2
      t.integer :col135
      t.string :key136
      t.decimal :amount136, precision: 15, scale: 2
      t.integer :col136
      t.string :key137
      t.decimal :amount137, precision: 15, scale: 2
      t.integer :col137
      t.string :key138
      t.decimal :amount138, precision: 15, scale: 2
      t.integer :col138
      t.string :key139
      t.decimal :amount139, precision: 15, scale: 2
      t.integer :col139
      t.string :key140
      t.decimal :amount140, precision: 15, scale: 2
      t.integer :col140
      t.string :key141
      t.decimal :amount141, precision: 15, scale: 2
      t.integer :col141
      t.string :key142
      t.decimal :amount142, precision: 15, scale: 2
      t.integer :col142
      t.string :key143
      t.decimal :amount143, precision: 15, scale: 2
      t.integer :col143
      t.string :key144
      t.decimal :amount144, precision: 15, scale: 2
      t.integer :col144
      t.string :key145
      t.decimal :amount145, precision: 15, scale: 2
      t.integer :col145
      t.string :key146
      t.decimal :amount146, precision: 15, scale: 2
      t.integer :col146
      t.string :key147
      t.decimal :amount147, precision: 15, scale: 2
      t.integer :col147
      t.string :key148
      t.decimal :amount148, precision: 15, scale: 2
      t.integer :col148
      t.string :key149
      t.decimal :amount149, precision: 15, scale: 2
      t.integer :col149
      t.string :key150
      t.decimal :amount150, precision: 15, scale: 2
      t.integer :col150
      t.string :key151
      t.decimal :amount151, precision: 15, scale: 2
      t.integer :col151
      t.string :key152
      t.decimal :amount152, precision: 15, scale: 2
      t.integer :col152
      t.string :key153
      t.decimal :amount153, precision: 15, scale: 2
      t.integer :col153
      t.string :key154
      t.decimal :amount154, precision: 15, scale: 2
      t.integer :col154
      t.string :key155
      t.decimal :amount155, precision: 15, scale: 2
      t.integer :col155
      t.string :key156
      t.decimal :amount156, precision: 15, scale: 2
      t.integer :col156
      t.string :key157
      t.decimal :amount157, precision: 15, scale: 2
      t.integer :col157
      t.string :key158
      t.decimal :amount158, precision: 15, scale: 2
      t.integer :col158
      t.string :key159
      t.decimal :amount159, precision: 15, scale: 2
      t.integer :col159
      t.string :key160
      t.decimal :amount160, precision: 15, scale: 2
      t.integer :col160
      t.string :key161
      t.decimal :amount161, precision: 15, scale: 2
      t.integer :col161
      t.string :key162
      t.decimal :amount162, precision: 15, scale: 2
      t.integer :col162
      t.string :key163
      t.decimal :amount163, precision: 15, scale: 2
      t.integer :col163
      t.string :key164
      t.decimal :amount164, precision: 15, scale: 2
      t.integer :col164
      t.string :key165
      t.decimal :amount165, precision: 15, scale: 2
      t.integer :col165
      t.string :key166
      t.decimal :amount166, precision: 15, scale: 2
      t.integer :col166
      t.string :key167
      t.decimal :amount167, precision: 15, scale: 2
      t.integer :col167
      t.string :key168
      t.decimal :amount168, precision: 15, scale: 2
      t.integer :col168
      t.string :key169
      t.decimal :amount169, precision: 15, scale: 2
      t.integer :col169
      t.string :key170
      t.decimal :amount170, precision: 15, scale: 2
      t.integer :col170
      t.string :key171
      t.decimal :amount171, precision: 15, scale: 2
      t.integer :col171
      t.string :key172
      t.decimal :amount172, precision: 15, scale: 2
      t.integer :col172
      t.string :key173
      t.decimal :amount173, precision: 15, scale: 2
      t.integer :col173
      t.string :key174
      t.decimal :amount174, precision: 15, scale: 2
      t.integer :col174
      t.string :key175
      t.decimal :amount175, precision: 15, scale: 2
      t.integer :col175
      t.string :key176
      t.decimal :amount176, precision: 15, scale: 2
      t.integer :col176
      t.string :key177
      t.decimal :amount177, precision: 15, scale: 2
      t.integer :col177
      t.string :key178
      t.decimal :amount178, precision: 15, scale: 2
      t.integer :col178
      t.string :key179
      t.decimal :amount179, precision: 15, scale: 2
      t.integer :col179
      t.string :key180
      t.decimal :amount180, precision: 15, scale: 2
      t.integer :col180
      t.string :key181
      t.decimal :amount181, precision: 15, scale: 2
      t.integer :col181
      t.string :key182
      t.decimal :amount182, precision: 15, scale: 2
      t.integer :col182
      t.string :key183
      t.decimal :amount183, precision: 15, scale: 2
      t.integer :col183
      t.string :key184
      t.decimal :amount184, precision: 15, scale: 2
      t.integer :col184
      t.string :key185
      t.decimal :amount185, precision: 15, scale: 2
      t.integer :col185
      t.string :key186
      t.decimal :amount186, precision: 15, scale: 2
      t.integer :col186
      t.string :key187
      t.decimal :amount187, precision: 15, scale: 2
      t.integer :col187
      t.string :key188
      t.decimal :amount188, precision: 15, scale: 2
      t.integer :col188
      t.string :key189
      t.decimal :amount189, precision: 15, scale: 2
      t.integer :col189
      t.string :key190
      t.decimal :amount190, precision: 15, scale: 2
      t.integer :col190
      t.string :key191
      t.decimal :amount191, precision: 15, scale: 2
      t.integer :col191
      t.string :key192
      t.decimal :amount192, precision: 15, scale: 2
      t.integer :col192
      t.string :key193
      t.decimal :amount193, precision: 15, scale: 2
      t.integer :col193
      t.string :key194
      t.decimal :amount194, precision: 15, scale: 2
      t.integer :col194
      t.string :key195
      t.decimal :amount195, precision: 15, scale: 2
      t.integer :col195
      t.string :key196
      t.decimal :amount196, precision: 15, scale: 2
      t.integer :col196
      t.string :key197
      t.decimal :amount197, precision: 15, scale: 2
      t.integer :col197
      t.string :key198
      t.decimal :amount198, precision: 15, scale: 2
      t.integer :col198
      t.string :key199
      t.decimal :amount199, precision: 15, scale: 2
      t.integer :col199
      t.string :key200
      t.decimal :amount200, precision: 15, scale: 2
      t.integer :col200
      t.string :key201
      t.decimal :amount201, precision: 15, scale: 2
      t.integer :col201
      t.string :key202
      t.decimal :amount202, precision: 15, scale: 2
      t.integer :col202
      t.string :key203
      t.decimal :amount203, precision: 15, scale: 2
      t.integer :col203
      t.string :key204
      t.decimal :amount204, precision: 15, scale: 2
      t.integer :col204
      t.string :key205
      t.decimal :amount205, precision: 15, scale: 2
      t.integer :col205
      t.string :key206
      t.decimal :amount206, precision: 15, scale: 2
      t.integer :col206
      t.string :key207
      t.decimal :amount207, precision: 15, scale: 2
      t.integer :col207
      t.string :key208
      t.decimal :amount208, precision: 15, scale: 2
      t.integer :col208
      t.string :key209
      t.decimal :amount209, precision: 15, scale: 2
      t.integer :col209
      t.string :key210
      t.decimal :amount210, precision: 10, scale: 2
      t.integer :col210
      t.string :key211
      t.decimal :amount211, precision: 15, scale: 2
      t.integer :col211
      t.string :key212
      t.decimal :amount212, precision: 15, scale: 2
      t.integer :col212
      t.string :key213
      t.decimal :amount213, precision: 15, scale: 2
      t.integer :col213
      t.string :key214
      t.decimal :amount214, precision: 15, scale: 2
      t.integer :col214
      t.string :key215
      t.decimal :amount215, precision: 15, scale: 2
      t.integer :col215
      t.string :key216
      t.decimal :amount216, precision: 15, scale: 2
      t.integer :col216
      t.string :key217
      t.decimal :amount217, precision: 15, scale: 2
      t.integer :col217
      t.string :key218
      t.decimal :amount218, precision: 15, scale: 2
      t.integer :col218
      t.string :key219
      t.decimal :amount219, precision: 15, scale: 2
      t.integer :col219
      t.string :key220
      t.decimal :amount220, precision: 15, scale: 2
      t.integer :col220
      t.string :key221
      t.decimal :amount221, precision: 15, scale: 2
      t.integer :col221
      t.string :key222
      t.decimal :amount222, precision: 15, scale: 2
      t.integer :col222
      t.string :key223
      t.decimal :amount223, precision: 15, scale: 2
      t.integer :col223
      t.string :key224
      t.decimal :amount224, precision: 15, scale: 2
      t.integer :col224
      t.string :key225
      t.decimal :amount225, precision: 15, scale: 2
      t.integer :col225
      t.string :key226
      t.decimal :amount226, precision: 15, scale: 2
      t.integer :col226
      t.string :key227
      t.decimal :amount227, precision: 15, scale: 2
      t.integer :col227
      t.string :key228
      t.decimal :amount228, precision: 15, scale: 2
      t.integer :col228
      t.string :key229
      t.decimal :amount229, precision: 15, scale: 2
      t.integer :col229
      t.string :key230
      t.decimal :amount230, precision: 15, scale: 2
      t.integer :col230
      t.string :key231
      t.decimal :amount231, precision: 15, scale: 2
      t.integer :col231
      t.string :key232
      t.decimal :amount232, precision: 15, scale: 2
      t.integer :col232
      t.string :key233
      t.decimal :amount233, precision: 15, scale: 2
      t.integer :col233
      t.string :key234
      t.decimal :amount234, precision: 15, scale: 2
      t.integer :col234
      t.string :key235
      t.decimal :amount235, precision: 15, scale: 2
      t.integer :col235
      t.string :key236
      t.decimal :amount236, precision: 15, scale: 2
      t.integer :col236
      t.string :key237
      t.decimal :amount237, precision: 15, scale: 2
      t.integer :col237
      t.string :key238
      t.decimal :amount238, precision: 15, scale: 2
      t.integer :col238
      t.string :key239
      t.decimal :amount239, precision: 15, scale: 2
      t.integer :col239
      t.string :key240
      t.decimal :amount240, precision: 15, scale: 2
      t.integer :col240
      t.string :key241
      t.decimal :amount241, precision: 15, scale: 2
      t.integer :col241
      t.string :key242
      t.decimal :amount242, precision: 15, scale: 2
      t.integer :col242
      t.string :key243
      t.decimal :amount243, precision: 15, scale: 2
      t.integer :col243
      t.string :key244
      t.decimal :amount244, precision: 15, scale: 2
      t.integer :col244
      t.string :key245
      t.decimal :amount245, precision: 15, scale: 2
      t.integer :col245
      t.string :key246
      t.decimal :amount246, precision: 15, scale: 2
      t.integer :col246
      t.string :key247
      t.decimal :amount247, precision: 15, scale: 2
      t.integer :col247
      t.string :key248
      t.decimal :amount248, precision: 15, scale: 2
      t.integer :col248
      t.string :key249
      t.decimal :amount249, precision: 15, scale: 2
      t.integer :col249
      t.string :key250
      t.decimal :amount250, precision: 15, scale: 2
      t.integer :col250
      t.string :key251
      t.decimal :amount251, precision: 15, scale: 2
      t.integer :col251
      t.string :key252
      t.decimal :amount252, precision: 15, scale: 2
      t.integer :col252
      t.string :key253
      t.decimal :amount253, precision: 15, scale: 2
      t.integer :col253
      t.string :key254
      t.decimal :amount254, precision: 15, scale: 2
      t.integer :col254
      t.string :key255
      t.decimal :amount255, precision: 15, scale: 2
      t.integer :col255
      t.string :key256
      t.decimal :amount256, precision: 15, scale: 2
      t.integer :col256
      t.string :key257
      t.decimal :amount257, precision: 15, scale: 2
      t.integer :col257
      t.string :key258
      t.decimal :amount258, precision: 15, scale: 2
      t.integer :col258
      t.string :key259
      t.decimal :amount259, precision: 15, scale: 2
      t.integer :col259
      t.string :key260
      t.decimal :amount260, precision: 15, scale: 2
      t.integer :col260
      t.string :key261
      t.decimal :amount261, precision: 15, scale: 2
      t.integer :col261
      t.string :key262
      t.decimal :amount262, precision: 15, scale: 2
      t.integer :col262
      t.string :key263
      t.decimal :amount263, precision: 15, scale: 2
      t.integer :col263
      t.string :key264
      t.decimal :amount264, precision: 15, scale: 2
      t.integer :col264
      t.string :key265
      t.decimal :amount265, precision: 15, scale: 2
      t.integer :col265
      t.string :key266
      t.decimal :amount266, precision: 15, scale: 2
      t.integer :col266
      t.string :key267
      t.decimal :amount267, precision: 15, scale: 2
      t.integer :col267
      t.string :key268
      t.decimal :amount268, precision: 15, scale: 2
      t.integer :col268
      t.string :key269
      t.decimal :amount269, precision: 15, scale: 2
      t.integer :col269
      t.string :key270
      t.decimal :amount270, precision: 15, scale: 2
      t.integer :col270
      t.string :key271
      t.decimal :amount271, precision: 15, scale: 2
      t.integer :col271
      t.string :key272
      t.decimal :amount272, precision: 15, scale: 2
      t.integer :col272
      t.string :key273
      t.decimal :amount273, precision: 15, scale: 2
      t.integer :col273
      t.string :key274
      t.decimal :amount274, precision: 15, scale: 2
      t.integer :col274
      t.string :key275
      t.decimal :amount275, precision: 15, scale: 2
      t.integer :col275
      t.string :key276
      t.decimal :amount276, precision: 15, scale: 2
      t.integer :col276
      t.string :key277
      t.decimal :amount277, precision: 15, scale: 2
      t.integer :col277
      t.string :key278
      t.decimal :amount278, precision: 15, scale: 2
      t.integer :col278
      t.string :key279
      t.decimal :amount279, precision: 15, scale: 2
      t.integer :col279
      t.string :key280
      t.decimal :amount280, precision: 15, scale: 2
      t.integer :col280
      t.string :key281
      t.decimal :amount281, precision: 15, scale: 2
      t.integer :col281
      t.string :key282
      t.decimal :amount282, precision: 15, scale: 2
      t.integer :col282
      t.string :key283
      t.decimal :amount283, precision: 15, scale: 2
      t.integer :col283
      t.string :key284
      t.decimal :amount284, precision: 15, scale: 2
      t.integer :col284
      t.string :key285
      t.decimal :amount285, precision: 15, scale: 2
      t.integer :col285
      t.string :key286
      t.decimal :amount286, precision: 15, scale: 2
      t.integer :col286
      t.string :key287
      t.decimal :amount287, precision: 15, scale: 2
      t.integer :col287
      t.string :key288
      t.decimal :amount288, precision: 15, scale: 2
      t.integer :col288
      t.string :key289
      t.decimal :amount289, precision: 15, scale: 2
      t.integer :col289
      t.string :key290
      t.decimal :amount290, precision: 15, scale: 2
      t.integer :col290
      t.string :key291
      t.decimal :amount291, precision: 15, scale: 2
      t.integer :col291
      t.string :key292
      t.decimal :amount292, precision: 15, scale: 2
      t.integer :col292
      t.string :key293
      t.decimal :amount293, precision: 15, scale: 2
      t.integer :col293
      t.string :key294
      t.decimal :amount294, precision: 15, scale: 2
      t.integer :col294
      t.string :key295
      t.decimal :amount295, precision: 15, scale: 2
      t.integer :col295
      t.string :key296
      t.decimal :amount296, precision: 15, scale: 2
      t.integer :col296
      t.string :key297
      t.decimal :amount297, precision: 15, scale: 2
      t.integer :col297
      t.string :key298
      t.decimal :amount298, precision: 15, scale: 2
      t.integer :col298
      t.string :key299
      t.decimal :amount299, precision: 15, scale: 2
      t.integer :col299
      t.string :key300
      t.decimal :amount300, precision: 15, scale: 2
      t.integer :col300

      t.timestamps
    end
  end
end
