.class public final Lb3/g4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/g4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static final A:Ljava/lang/String;

.field private static final B:Ljava/lang/String;

.field private static final C:Ljava/lang/String;

.field private static final D:Ljava/lang/String;

.field private static final E:Ljava/lang/String;

.field private static final F:Ljava/lang/String;

.field private static final G:Ljava/lang/String;

.field public static final H:Lb3/r$a;

.field public static final r:Ljava/lang/Object;

.field private static final s:Ljava/lang/Object;

.field private static final t:Lb3/f2;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/lang/String;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;

.field private static final y:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lb3/f2;

.field public d:Ljava/lang/Object;

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lb3/f2$g;

.field public l:Z

.field public m:J

.field public n:J

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb3/g4$d;->r:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lb3/g4$d;->s:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Lb3/f2$c;

    .line 16
    .line 17
    invoke-direct {v0}, Lb3/f2$c;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "com.google.android.exoplayer2.Timeline"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lb3/f2$c;->c(Ljava/lang/String;)Lb3/f2$c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lb3/f2$c;->e(Landroid/net/Uri;)Lb3/f2$c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lb3/f2$c;->a()Lb3/f2;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lb3/g4$d;->t:Lb3/f2;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lb3/g4$d;->u:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lb3/g4$d;->v:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v0, 0x3

    .line 53
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lb3/g4$d;->w:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v0, 0x4

    .line 60
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lb3/g4$d;->x:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v0, 0x5

    .line 67
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lb3/g4$d;->y:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lb3/g4$d;->z:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v0, 0x7

    .line 81
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lb3/g4$d;->A:Ljava/lang/String;

    .line 86
    .line 87
    const/16 v0, 0x8

    .line 88
    .line 89
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lb3/g4$d;->B:Ljava/lang/String;

    .line 94
    .line 95
    const/16 v0, 0x9

    .line 96
    .line 97
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lb3/g4$d;->C:Ljava/lang/String;

    .line 102
    .line 103
    const/16 v0, 0xa

    .line 104
    .line 105
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lb3/g4$d;->D:Ljava/lang/String;

    .line 110
    .line 111
    const/16 v0, 0xb

    .line 112
    .line 113
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lb3/g4$d;->E:Ljava/lang/String;

    .line 118
    .line 119
    const/16 v0, 0xc

    .line 120
    .line 121
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lb3/g4$d;->F:Ljava/lang/String;

    .line 126
    .line 127
    const/16 v0, 0xd

    .line 128
    .line 129
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lb3/g4$d;->G:Ljava/lang/String;

    .line 134
    .line 135
    new-instance v0, Lb3/i4;

    .line 136
    .line 137
    invoke-direct {v0}, Lb3/i4;-><init>()V

    .line 138
    .line 139
    .line 140
    sput-object v0, Lb3/g4$d;->H:Lb3/r$a;

    .line 141
    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lb3/g4$d;->r:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v0, Lb3/g4$d;->t:Lb3/f2;

    .line 9
    .line 10
    iput-object v0, p0, Lb3/g4$d;->c:Lb3/f2;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lb3/g4$d;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/g4$d;->b(Landroid/os/Bundle;)Lb3/g4$d;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lb3/g4$d;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lb3/g4$d;->u:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lb3/f2;->o:Lb3/r$a;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Lb3/r$a;->fromBundle(Landroid/os/Bundle;)Lb3/r;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lb3/f2;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v1, Lb3/f2;->i:Lb3/f2;

    .line 21
    .line 22
    :goto_0
    move-object v4, v1

    .line 23
    sget-object v1, Lb3/g4$d;->v:Ljava/lang/String;

    .line 24
    .line 25
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    sget-object v1, Lb3/g4$d;->w:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    sget-object v1, Lb3/g4$d;->x:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v10

    .line 46
    sget-object v1, Lb3/g4$d;->y:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    sget-object v1, Lb3/g4$d;->z:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    sget-object v1, Lb3/g4$d;->A:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    sget-object v14, Lb3/f2$g;->l:Lb3/r$a;

    .line 68
    .line 69
    invoke-interface {v14, v1}, Lb3/r$a;->fromBundle(Landroid/os/Bundle;)Lb3/r;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lb3/f2$g;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/4 v1, 0x0

    .line 77
    :goto_1
    move-object v14, v1

    .line 78
    sget-object v1, Lb3/g4$d;->B:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    sget-object v15, Lb3/g4$d;->C:Ljava/lang/String;

    .line 85
    .line 86
    move-wide/from16 v23, v6

    .line 87
    .line 88
    const-wide/16 v5, 0x0

    .line 89
    .line 90
    invoke-virtual {v0, v15, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v15

    .line 94
    sget-object v7, Lb3/g4$d;->D:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v17

    .line 100
    sget-object v2, Lb3/g4$d;->E:Ljava/lang/String;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result v19

    .line 107
    sget-object v2, Lb3/g4$d;->F:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result v20

    .line 113
    sget-object v2, Lb3/g4$d;->G:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v21

    .line 119
    new-instance v0, Lb3/g4$d;

    .line 120
    .line 121
    move-object v2, v0

    .line 122
    invoke-direct {v0}, Lb3/g4$d;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v3, Lb3/g4$d;->s:Ljava/lang/Object;

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    move-wide/from16 v6, v23

    .line 129
    .line 130
    invoke-virtual/range {v2 .. v22}, Lb3/g4$d;->h(Ljava/lang/Object;Lb3/f2;Ljava/lang/Object;JJJZZLb3/f2$g;JJIIJ)Lb3/g4$d;

    .line 131
    .line 132
    .line 133
    iput-boolean v1, v0, Lb3/g4$d;->l:Z

    .line 134
    .line 135
    return-object v0
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/g4$d;->g:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ly4/q0;->a0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/g4$d;->m:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ly4/q0;->X0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/g4$d;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lb3/g4$d;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_1
    check-cast p1, Lb3/g4$d;

    .line 23
    .line 24
    iget-object v2, p0, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v3, p1, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v2, v3}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lb3/g4$d;->c:Lb3/f2;

    .line 35
    .line 36
    iget-object v3, p1, Lb3/g4$d;->c:Lb3/f2;

    .line 37
    .line 38
    invoke-static {v2, v3}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lb3/g4$d;->d:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v3, p1, Lb3/g4$d;->d:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v2, v3}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lb3/g4$d;->k:Lb3/f2$g;

    .line 55
    .line 56
    iget-object v3, p1, Lb3/g4$d;->k:Lb3/f2$g;

    .line 57
    .line 58
    invoke-static {v2, v3}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-wide v2, p0, Lb3/g4$d;->e:J

    .line 65
    .line 66
    iget-wide v4, p1, Lb3/g4$d;->e:J

    .line 67
    .line 68
    cmp-long v2, v2, v4

    .line 69
    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    iget-wide v2, p0, Lb3/g4$d;->f:J

    .line 73
    .line 74
    iget-wide v4, p1, Lb3/g4$d;->f:J

    .line 75
    .line 76
    cmp-long v2, v2, v4

    .line 77
    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    iget-wide v2, p0, Lb3/g4$d;->g:J

    .line 81
    .line 82
    iget-wide v4, p1, Lb3/g4$d;->g:J

    .line 83
    .line 84
    cmp-long v2, v2, v4

    .line 85
    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    iget-boolean v2, p0, Lb3/g4$d;->h:Z

    .line 89
    .line 90
    iget-boolean v3, p1, Lb3/g4$d;->h:Z

    .line 91
    .line 92
    if-ne v2, v3, :cond_2

    .line 93
    .line 94
    iget-boolean v2, p0, Lb3/g4$d;->i:Z

    .line 95
    .line 96
    iget-boolean v3, p1, Lb3/g4$d;->i:Z

    .line 97
    .line 98
    if-ne v2, v3, :cond_2

    .line 99
    .line 100
    iget-boolean v2, p0, Lb3/g4$d;->l:Z

    .line 101
    .line 102
    iget-boolean v3, p1, Lb3/g4$d;->l:Z

    .line 103
    .line 104
    if-ne v2, v3, :cond_2

    .line 105
    .line 106
    iget-wide v2, p0, Lb3/g4$d;->m:J

    .line 107
    .line 108
    iget-wide v4, p1, Lb3/g4$d;->m:J

    .line 109
    .line 110
    cmp-long v2, v2, v4

    .line 111
    .line 112
    if-nez v2, :cond_2

    .line 113
    .line 114
    iget-wide v2, p0, Lb3/g4$d;->n:J

    .line 115
    .line 116
    iget-wide v4, p1, Lb3/g4$d;->n:J

    .line 117
    .line 118
    cmp-long v2, v2, v4

    .line 119
    .line 120
    if-nez v2, :cond_2

    .line 121
    .line 122
    iget v2, p0, Lb3/g4$d;->o:I

    .line 123
    .line 124
    iget v3, p1, Lb3/g4$d;->o:I

    .line 125
    .line 126
    if-ne v2, v3, :cond_2

    .line 127
    .line 128
    iget v2, p0, Lb3/g4$d;->p:I

    .line 129
    .line 130
    iget v3, p1, Lb3/g4$d;->p:I

    .line 131
    .line 132
    if-ne v2, v3, :cond_2

    .line 133
    .line 134
    iget-wide v2, p0, Lb3/g4$d;->q:J

    .line 135
    .line 136
    iget-wide v4, p1, Lb3/g4$d;->q:J

    .line 137
    .line 138
    cmp-long p1, v2, v4

    .line 139
    .line 140
    if-nez p1, :cond_2

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 145
    :cond_3
    :goto_1
    return v1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb3/g4$d;->n:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ly4/q0;->X0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public g()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb3/g4$d;->j:Z

    .line 2
    .line 3
    iget-object v1, p0, Lb3/g4$d;->k:Lb3/f2$g;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v0, v3

    .line 17
    :goto_1
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lb3/g4$d;->k:Lb3/f2$g;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v2, v3

    .line 26
    :goto_2
    return v2
.end method

.method public h(Ljava/lang/Object;Lb3/f2;Ljava/lang/Object;JJJZZLb3/f2$g;JJIIJ)Lb3/g4$d;
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object/from16 v2, p12

    .line 4
    .line 5
    move-object v3, p1

    .line 6
    iput-object v3, v0, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v3, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v3, Lb3/g4$d;->t:Lb3/f2;

    .line 13
    .line 14
    :goto_0
    iput-object v3, v0, Lb3/g4$d;->c:Lb3/f2;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v1, Lb3/f2;->b:Lb3/f2$h;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v1, Lb3/f2$h;->h:Ljava/lang/Object;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    iput-object v1, v0, Lb3/g4$d;->b:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v1, p3

    .line 29
    iput-object v1, v0, Lb3/g4$d;->d:Ljava/lang/Object;

    .line 30
    .line 31
    move-wide v3, p4

    .line 32
    iput-wide v3, v0, Lb3/g4$d;->e:J

    .line 33
    .line 34
    move-wide v3, p6

    .line 35
    iput-wide v3, v0, Lb3/g4$d;->f:J

    .line 36
    .line 37
    move-wide v3, p8

    .line 38
    iput-wide v3, v0, Lb3/g4$d;->g:J

    .line 39
    .line 40
    move v1, p10

    .line 41
    iput-boolean v1, v0, Lb3/g4$d;->h:Z

    .line 42
    .line 43
    move/from16 v1, p11

    .line 44
    .line 45
    iput-boolean v1, v0, Lb3/g4$d;->i:Z

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v3, v1

    .line 53
    :goto_2
    iput-boolean v3, v0, Lb3/g4$d;->j:Z

    .line 54
    .line 55
    iput-object v2, v0, Lb3/g4$d;->k:Lb3/f2$g;

    .line 56
    .line 57
    move-wide/from16 v2, p13

    .line 58
    .line 59
    iput-wide v2, v0, Lb3/g4$d;->m:J

    .line 60
    .line 61
    move-wide/from16 v2, p15

    .line 62
    .line 63
    iput-wide v2, v0, Lb3/g4$d;->n:J

    .line 64
    .line 65
    move/from16 v2, p17

    .line 66
    .line 67
    iput v2, v0, Lb3/g4$d;->o:I

    .line 68
    .line 69
    move/from16 v2, p18

    .line 70
    .line 71
    iput v2, v0, Lb3/g4$d;->p:I

    .line 72
    .line 73
    move-wide/from16 v2, p19

    .line 74
    .line 75
    iput-wide v2, v0, Lb3/g4$d;->q:J

    .line 76
    .line 77
    iput-boolean v1, v0, Lb3/g4$d;->l:Z

    .line 78
    .line 79
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/g4$d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xd9

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    mul-int/lit8 v1, v1, 0x1f

    .line 11
    .line 12
    iget-object v0, p0, Lb3/g4$d;->c:Lb3/f2;

    .line 13
    .line 14
    invoke-virtual {v0}, Lb3/f2;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x1f

    .line 20
    .line 21
    iget-object v0, p0, Lb3/g4$d;->d:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    add-int/2addr v1, v0

    .line 33
    mul-int/lit8 v1, v1, 0x1f

    .line 34
    .line 35
    iget-object v0, p0, Lb3/g4$d;->k:Lb3/f2$g;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0}, Lb3/f2$g;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    :goto_1
    add-int/2addr v1, v2

    .line 45
    mul-int/lit8 v1, v1, 0x1f

    .line 46
    .line 47
    iget-wide v2, p0, Lb3/g4$d;->e:J

    .line 48
    .line 49
    const/16 v0, 0x20

    .line 50
    .line 51
    ushr-long v4, v2, v0

    .line 52
    .line 53
    xor-long/2addr v2, v4

    .line 54
    long-to-int v2, v2

    .line 55
    add-int/2addr v1, v2

    .line 56
    mul-int/lit8 v1, v1, 0x1f

    .line 57
    .line 58
    iget-wide v2, p0, Lb3/g4$d;->f:J

    .line 59
    .line 60
    ushr-long v4, v2, v0

    .line 61
    .line 62
    xor-long/2addr v2, v4

    .line 63
    long-to-int v2, v2

    .line 64
    add-int/2addr v1, v2

    .line 65
    mul-int/lit8 v1, v1, 0x1f

    .line 66
    .line 67
    iget-wide v2, p0, Lb3/g4$d;->g:J

    .line 68
    .line 69
    ushr-long v4, v2, v0

    .line 70
    .line 71
    xor-long/2addr v2, v4

    .line 72
    long-to-int v2, v2

    .line 73
    add-int/2addr v1, v2

    .line 74
    mul-int/lit8 v1, v1, 0x1f

    .line 75
    .line 76
    iget-boolean v2, p0, Lb3/g4$d;->h:Z

    .line 77
    .line 78
    add-int/2addr v1, v2

    .line 79
    mul-int/lit8 v1, v1, 0x1f

    .line 80
    .line 81
    iget-boolean v2, p0, Lb3/g4$d;->i:Z

    .line 82
    .line 83
    add-int/2addr v1, v2

    .line 84
    mul-int/lit8 v1, v1, 0x1f

    .line 85
    .line 86
    iget-boolean v2, p0, Lb3/g4$d;->l:Z

    .line 87
    .line 88
    add-int/2addr v1, v2

    .line 89
    mul-int/lit8 v1, v1, 0x1f

    .line 90
    .line 91
    iget-wide v2, p0, Lb3/g4$d;->m:J

    .line 92
    .line 93
    ushr-long v4, v2, v0

    .line 94
    .line 95
    xor-long/2addr v2, v4

    .line 96
    long-to-int v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 98
    mul-int/lit8 v1, v1, 0x1f

    .line 99
    .line 100
    iget-wide v2, p0, Lb3/g4$d;->n:J

    .line 101
    .line 102
    ushr-long v4, v2, v0

    .line 103
    .line 104
    xor-long/2addr v2, v4

    .line 105
    long-to-int v2, v2

    .line 106
    add-int/2addr v1, v2

    .line 107
    mul-int/lit8 v1, v1, 0x1f

    .line 108
    .line 109
    iget v2, p0, Lb3/g4$d;->o:I

    .line 110
    .line 111
    add-int/2addr v1, v2

    .line 112
    mul-int/lit8 v1, v1, 0x1f

    .line 113
    .line 114
    iget v2, p0, Lb3/g4$d;->p:I

    .line 115
    .line 116
    add-int/2addr v1, v2

    .line 117
    mul-int/lit8 v1, v1, 0x1f

    .line 118
    .line 119
    iget-wide v2, p0, Lb3/g4$d;->q:J

    .line 120
    .line 121
    ushr-long v4, v2, v0

    .line 122
    .line 123
    xor-long/2addr v2, v4

    .line 124
    long-to-int v0, v2

    .line 125
    add-int/2addr v1, v0

    .line 126
    return v1
.end method
