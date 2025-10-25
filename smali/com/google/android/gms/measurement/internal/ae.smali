.class public final Lcom/google/android/gms/measurement/internal/ae;
.super Lo5/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:J

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:J

.field public final E:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:I

.field public final n:Z

.field public final o:Z

.field public final p:Ljava/lang/Boolean;

.field public final q:J

.field public final r:Ljava/util/List;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Z

.field public final w:J

.field public final x:I

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/be;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/be;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/ae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lo5/a;-><init>()V

    .line 2
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->c:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->j:J

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->d:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->e:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->f:J

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->g:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->h:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->i:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->k:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->l:J

    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/gms/measurement/internal/ae;->m:I

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->n:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->o:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->p:Ljava/lang/Boolean;

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->q:J

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->r:Ljava/util/List;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->s:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->t:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->u:Ljava/lang/String;

    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->v:Z

    move-wide/from16 v1, p28

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->w:J

    move/from16 v1, p30

    iput v1, v0, Lcom/google/android/gms/measurement/internal/ae;->x:I

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->y:Ljava/lang/String;

    move/from16 v1, p32

    iput v1, v0, Lcom/google/android/gms/measurement/internal/ae;->z:I

    move-wide/from16 v1, p33

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->A:J

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->B:Ljava/lang/String;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->C:Ljava/lang/String;

    move-wide/from16 v1, p37

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->D:J

    move/from16 v1, p39

    iput v1, v0, Lcom/google/android/gms/measurement/internal/ae;->E:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Lo5/a;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->c:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->j:J

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->d:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->e:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->f:J

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->g:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->h:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->i:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->k:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->l:J

    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/gms/measurement/internal/ae;->m:I

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->n:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->o:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->p:Ljava/lang/Boolean;

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->q:J

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->r:Ljava/util/List;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->s:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->t:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->u:Ljava/lang/String;

    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/ae;->v:Z

    move-wide/from16 v1, p28

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->w:J

    move/from16 v1, p30

    iput v1, v0, Lcom/google/android/gms/measurement/internal/ae;->x:I

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->y:Ljava/lang/String;

    move/from16 v1, p32

    iput v1, v0, Lcom/google/android/gms/measurement/internal/ae;->z:I

    move-wide/from16 v1, p33

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->A:J

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->B:Ljava/lang/String;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->C:Ljava/lang/String;

    move-wide/from16 v1, p37

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/ae;->D:J

    move/from16 v1, p39

    iput v1, v0, Lcom/google/android/gms/measurement/internal/ae;->E:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/ae;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lo5/c;->a(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v1, p2, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x3

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x5

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x6

    .line 31
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/ae;->e:J

    .line 32
    .line 33
    invoke-static {p1, p2, v3, v4}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x7

    .line 37
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/ae;->f:J

    .line 38
    .line 39
    invoke-static {p1, p2, v3, v4}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x8

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->g:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const/16 p2, 0x9

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ae;->h:Z

    .line 52
    .line 53
    invoke-static {p1, p2, v1}, Lo5/c;->c(Landroid/os/Parcel;IZ)V

    .line 54
    .line 55
    .line 56
    const/16 p2, 0xa

    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ae;->i:Z

    .line 59
    .line 60
    invoke-static {p1, p2, v1}, Lo5/c;->c(Landroid/os/Parcel;IZ)V

    .line 61
    .line 62
    .line 63
    const/16 p2, 0xb

    .line 64
    .line 65
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/ae;->j:J

    .line 66
    .line 67
    invoke-static {p1, p2, v3, v4}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 68
    .line 69
    .line 70
    const/16 p2, 0xc

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->k:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    const/16 p2, 0xe

    .line 78
    .line 79
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/ae;->l:J

    .line 80
    .line 81
    invoke-static {p1, p2, v3, v4}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 82
    .line 83
    .line 84
    const/16 p2, 0xf

    .line 85
    .line 86
    iget v1, p0, Lcom/google/android/gms/measurement/internal/ae;->m:I

    .line 87
    .line 88
    invoke-static {p1, p2, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 89
    .line 90
    .line 91
    const/16 p2, 0x10

    .line 92
    .line 93
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ae;->n:Z

    .line 94
    .line 95
    invoke-static {p1, p2, v1}, Lo5/c;->c(Landroid/os/Parcel;IZ)V

    .line 96
    .line 97
    .line 98
    const/16 p2, 0x12

    .line 99
    .line 100
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ae;->o:Z

    .line 101
    .line 102
    invoke-static {p1, p2, v1}, Lo5/c;->c(Landroid/os/Parcel;IZ)V

    .line 103
    .line 104
    .line 105
    const/16 p2, 0x15

    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->p:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-static {p1, p2, v1, v2}, Lo5/c;->d(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 110
    .line 111
    .line 112
    const/16 p2, 0x16

    .line 113
    .line 114
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/ae;->q:J

    .line 115
    .line 116
    invoke-static {p1, p2, v3, v4}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 117
    .line 118
    .line 119
    const/16 p2, 0x17

    .line 120
    .line 121
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->r:Ljava/util/List;

    .line 122
    .line 123
    invoke-static {p1, p2, v1, v2}, Lo5/c;->r(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 124
    .line 125
    .line 126
    const/16 p2, 0x19

    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->s:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    const/16 p2, 0x1a

    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->t:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    const/16 p2, 0x1b

    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->u:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    const/16 p2, 0x1c

    .line 148
    .line 149
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ae;->v:Z

    .line 150
    .line 151
    invoke-static {p1, p2, v1}, Lo5/c;->c(Landroid/os/Parcel;IZ)V

    .line 152
    .line 153
    .line 154
    const/16 p2, 0x1d

    .line 155
    .line 156
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/ae;->w:J

    .line 157
    .line 158
    invoke-static {p1, p2, v3, v4}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 159
    .line 160
    .line 161
    const/16 p2, 0x1e

    .line 162
    .line 163
    iget v1, p0, Lcom/google/android/gms/measurement/internal/ae;->x:I

    .line 164
    .line 165
    invoke-static {p1, p2, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 166
    .line 167
    .line 168
    const/16 p2, 0x1f

    .line 169
    .line 170
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->y:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 173
    .line 174
    .line 175
    const/16 p2, 0x20

    .line 176
    .line 177
    iget v1, p0, Lcom/google/android/gms/measurement/internal/ae;->z:I

    .line 178
    .line 179
    invoke-static {p1, p2, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 180
    .line 181
    .line 182
    const/16 p2, 0x22

    .line 183
    .line 184
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/ae;->A:J

    .line 185
    .line 186
    invoke-static {p1, p2, v3, v4}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 187
    .line 188
    .line 189
    const/16 p2, 0x23

    .line 190
    .line 191
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->B:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 194
    .line 195
    .line 196
    const/16 p2, 0x24

    .line 197
    .line 198
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ae;->C:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {p1, p2, v1, v2}, Lo5/c;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 201
    .line 202
    .line 203
    const/16 p2, 0x25

    .line 204
    .line 205
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/ae;->D:J

    .line 206
    .line 207
    invoke-static {p1, p2, v1, v2}, Lo5/c;->n(Landroid/os/Parcel;IJ)V

    .line 208
    .line 209
    .line 210
    const/16 p2, 0x26

    .line 211
    .line 212
    iget v1, p0, Lcom/google/android/gms/measurement/internal/ae;->E:I

    .line 213
    .line 214
    invoke-static {p1, p2, v1}, Lo5/c;->k(Landroid/os/Parcel;II)V

    .line 215
    .line 216
    .line 217
    invoke-static {p1, v0}, Lo5/c;->b(Landroid/os/Parcel;I)V

    .line 218
    .line 219
    .line 220
    return-void
.end method
