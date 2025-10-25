.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserProfileAttributePigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    }
.end annotation


# instance fields
.field private age:Ljava/lang/Long;

.field private boolValue:Ljava/lang/Boolean;

.field private day:Ljava/lang/Long;

.field private doubleValue:Ljava/lang/Double;

.field private genderValue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

.field private ifUndefined:Ljava/lang/Boolean;

.field private key:Ljava/lang/String;

.field private month:Ljava/lang/Long;

.field private reset:Ljava/lang/Boolean;

.field private stringValue:Ljava/lang/String;

.field private type:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

.field private year:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setKey(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Double;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setDoubleValue(Ljava/lang/Double;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setStringValue(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setBoolValue(Ljava/lang/Boolean;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    move-object v1, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    instance-of v3, v1, Ljava/lang/Integer;

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    check-cast v1, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-long v3, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    check-cast v1, Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_1
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setYear(Ljava/lang/Long;)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x5

    .line 82
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    move-object v1, v2

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    .line 91
    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    check-cast v1, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-long v3, v1

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    check-cast v1, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :goto_3
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setMonth(Ljava/lang/Long;)V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x6

    .line 116
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-nez v1, :cond_4

    .line 121
    .line 122
    move-object v1, v2

    .line 123
    goto :goto_5

    .line 124
    :cond_4
    instance-of v3, v1, Ljava/lang/Integer;

    .line 125
    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    check-cast v1, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    int-to-long v3, v1

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    check-cast v1, Ljava/lang/Long;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_5
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setDay(Ljava/lang/Long;)V

    .line 147
    .line 148
    .line 149
    const/4 v1, 0x7

    .line 150
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-nez v1, :cond_6

    .line 155
    .line 156
    move-object v1, v2

    .line 157
    goto :goto_7

    .line 158
    :cond_6
    instance-of v3, v1, Ljava/lang/Integer;

    .line 159
    .line 160
    if-eqz v3, :cond_7

    .line 161
    .line 162
    check-cast v1, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    int-to-long v3, v1

    .line 169
    goto :goto_6

    .line 170
    :cond_7
    check-cast v1, Ljava/lang/Long;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    :goto_7
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setAge(Ljava/lang/Long;)V

    .line 181
    .line 182
    .line 183
    const/16 v1, 0x8

    .line 184
    .line 185
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-nez v1, :cond_8

    .line 190
    .line 191
    move-object v1, v2

    .line 192
    goto :goto_8

    .line 193
    :cond_8
    invoke-static {}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v1, Ljava/lang/Integer;

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    aget-object v1, v3, v1

    .line 204
    .line 205
    :goto_8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setGenderValue(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;)V

    .line 206
    .line 207
    .line 208
    const/16 v1, 0x9

    .line 209
    .line 210
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setIfUndefined(Ljava/lang/Boolean;)V

    .line 217
    .line 218
    .line 219
    const/16 v1, 0xa

    .line 220
    .line 221
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Ljava/lang/Boolean;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setReset(Ljava/lang/Boolean;)V

    .line 228
    .line 229
    .line 230
    const/16 v1, 0xb

    .line 231
    .line 232
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    if-nez p0, :cond_9

    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_9
    invoke-static {}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast p0, Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    aget-object v2, v1, p0

    .line 250
    .line 251
    :goto_9
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setType(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;)V

    .line 252
    .line 253
    .line 254
    return-object v0
.end method


# virtual methods
.method public getAge()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->age:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBoolValue()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->boolValue:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDay()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->day:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDoubleValue()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->doubleValue:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGenderValue()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->genderValue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIfUndefined()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->ifUndefined:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMonth()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->month:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReset()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->reset:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->stringValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->type:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getYear()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->year:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAge(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->age:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setBoolValue(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->boolValue:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setDay(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->day:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setDoubleValue(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->doubleValue:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setGenderValue(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->genderValue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setIfUndefined(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->ifUndefined:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->key:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"key\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setMonth(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->month:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setReset(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->reset:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->stringValue:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->type:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 2
    .line 3
    return-void
.end method

.method public setYear(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->year:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method toList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->key:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->doubleValue:Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->stringValue:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->boolValue:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->year:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->month:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->day:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->age:Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->genderValue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    move-object v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget v1, v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->index:I

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->ifUndefined:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->reset:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->type:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 75
    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget v1, v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;->index:I

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    return-object v0
.end method
