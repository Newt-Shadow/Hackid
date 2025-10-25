.class public final Lj0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/x$a;
    }
.end annotation


# static fields
.field public static final j:Lj0/x$a;

.field private static final k:Ljava/lang/String;

.field private static final l:J

.field private static final m:J


# instance fields
.field private final a:Lad/i;

.field private final b:Ljava/io/File;

.field private final c:Lwd/d;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lce/a;

.field private final h:Lxc/d;

.field private final i:Lxc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj0/x$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lj0/x$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lj0/x;->j:Lj0/x$a;

    .line 8
    .line 9
    const-string v0, "Resource deadlock would occur"

    .line 10
    .line 11
    sput-object v0, Lj0/x;->k:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v0, 0xa

    .line 14
    .line 15
    sput-wide v0, Lj0/x;->l:J

    .line 16
    .line 17
    const-wide/32 v0, 0xea60

    .line 18
    .line 19
    .line 20
    sput-wide v0, Lj0/x;->m:J

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lad/i;Ljava/io/File;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "file"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lj0/x;->a:Lad/i;

    .line 15
    .line 16
    iput-object p2, p0, Lj0/x;->b:Ljava/io/File;

    .line 17
    .line 18
    sget-object p1, Lj0/a0;->c:Lj0/a0$a;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lj0/a0$a;->e(Ljava/io/File;)Lwd/d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lj0/x;->c:Lwd/d;

    .line 25
    .line 26
    const-string p1, ".lock"

    .line 27
    .line 28
    iput-object p1, p0, Lj0/x;->d:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, ".version"

    .line 31
    .line 32
    iput-object p1, p0, Lj0/x;->e:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "fcntl failed: EAGAIN"

    .line 35
    .line 36
    iput-object p1, p0, Lj0/x;->f:Ljava/lang/String;

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    const/4 p2, 0x0

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {v0, p1, p2}, Lce/g;->b(ZILjava/lang/Object;)Lce/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lj0/x;->g:Lce/a;

    .line 46
    .line 47
    new-instance p1, Lj0/x$f;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lj0/x$f;-><init>(Lj0/x;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lj0/x;->h:Lxc/d;

    .line 57
    .line 58
    new-instance p1, Lj0/x$d;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lj0/x$d;-><init>(Lj0/x;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lj0/x;->i:Lxc/d;

    .line 68
    .line 69
    return-void
.end method

.method public static final synthetic f(Lj0/x;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj0/x;->n(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lj0/x;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj0/x;->p(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lj0/x;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i()J
    .locals 2

    .line 1
    sget-wide v0, Lj0/x;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic j(Lj0/x;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj0/x;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k()J
    .locals 2

    .line 1
    sget-wide v0, Lj0/x;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic l(Lj0/x;)Lj0/f0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lj0/x;->r()Lj0/f0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lj0/x;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj0/x;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final n(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lj0/x;->o(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final o(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Unable to create parent directories of "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method private final p(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lj0/x;->b:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private final q()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/x;->h:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/File;

    .line 8
    .line 9
    return-object v0
.end method

.method private final r()Lj0/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/x;->i:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj0/f0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a(Lid/l;Lad/e;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lj0/x$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/x$e;

    .line 7
    .line 8
    iget v1, v0, Lj0/x$e;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/x$e;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/x$e;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/x$e;-><init>(Lj0/x;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/x$e;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/x$e;->f:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Lj0/x$e;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Ljava/nio/channels/FileLock;

    .line 48
    .line 49
    iget-object v1, v0, Lj0/x$e;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/io/Closeable;

    .line 52
    .line 53
    iget-object v0, v0, Lj0/x$e;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lce/a;

    .line 56
    .line 57
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :catchall_0
    move-exception p2

    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_2
    iget-object p1, v0, Lj0/x$e;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Ljava/io/Closeable;

    .line 76
    .line 77
    iget-object v2, v0, Lj0/x$e;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Lce/a;

    .line 80
    .line 81
    iget-object v4, v0, Lj0/x$e;->a:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, Lid/l;

    .line 84
    .line 85
    :try_start_1
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception p2

    .line 90
    move-object v1, p1

    .line 91
    move-object v0, v2

    .line 92
    :goto_1
    move-object p1, v6

    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_3
    iget-object p1, v0, Lj0/x$e;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lce/a;

    .line 98
    .line 99
    iget-object v2, v0, Lj0/x$e;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Lid/l;

    .line 102
    .line 103
    iget-object v5, v0, Lj0/x$e;->a:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v5, Lj0/x;

    .line 106
    .line 107
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    move-object p2, p1

    .line 111
    move-object p1, v2

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lj0/x;->g:Lce/a;

    .line 117
    .line 118
    iput-object p0, v0, Lj0/x$e;->a:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p1, v0, Lj0/x$e;->b:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p2, v0, Lj0/x$e;->c:Ljava/lang/Object;

    .line 123
    .line 124
    iput v5, v0, Lj0/x$e;->f:I

    .line 125
    .line 126
    invoke-interface {p2, v6, v0}, Lce/a;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-ne v2, v1, :cond_5

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_5
    move-object v5, p0

    .line 134
    :goto_2
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    .line 135
    .line 136
    invoke-direct {v5}, Lj0/x;->q()Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 141
    .line 142
    .line 143
    :try_start_3
    sget-object v5, Lj0/x;->j:Lj0/x$a;

    .line 144
    .line 145
    iput-object p1, v0, Lj0/x$e;->a:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object p2, v0, Lj0/x$e;->b:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v2, v0, Lj0/x$e;->c:Ljava/lang/Object;

    .line 150
    .line 151
    iput v4, v0, Lj0/x$e;->f:I

    .line 152
    .line 153
    invoke-static {v5, v2, v0}, Lj0/x$a;->a(Lj0/x$a;Ljava/io/FileOutputStream;Lad/e;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 157
    if-ne v4, v1, :cond_6

    .line 158
    .line 159
    return-object v1

    .line 160
    :cond_6
    move-object v7, v4

    .line 161
    move-object v4, p1

    .line 162
    move-object p1, v2

    .line 163
    move-object v2, p2

    .line 164
    move-object p2, v7

    .line 165
    :goto_3
    :try_start_4
    check-cast p2, Ljava/nio/channels/FileLock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    .line 167
    :try_start_5
    iput-object v2, v0, Lj0/x$e;->a:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object p1, v0, Lj0/x$e;->b:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object p2, v0, Lj0/x$e;->c:Ljava/lang/Object;

    .line 172
    .line 173
    iput v3, v0, Lj0/x$e;->f:I

    .line 174
    .line 175
    invoke-interface {v4, v0}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 179
    if-ne v0, v1, :cond_7

    .line 180
    .line 181
    return-object v1

    .line 182
    :cond_7
    move-object v1, p1

    .line 183
    move-object p1, p2

    .line 184
    move-object p2, v0

    .line 185
    move-object v0, v2

    .line 186
    :goto_4
    if-eqz p1, :cond_8

    .line 187
    .line 188
    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 189
    .line 190
    .line 191
    :cond_8
    :try_start_7
    invoke-static {v1, v6}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v6}, Lce/a;->d(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    return-object p2

    .line 198
    :catchall_2
    move-exception p1

    .line 199
    move-object p2, v0

    .line 200
    goto :goto_8

    .line 201
    :catchall_3
    move-exception v0

    .line 202
    move-object v1, p1

    .line 203
    move-object p1, p2

    .line 204
    move-object p2, v0

    .line 205
    move-object v0, v2

    .line 206
    goto :goto_5

    .line 207
    :catchall_4
    move-exception p1

    .line 208
    move-object v0, p2

    .line 209
    move-object v1, v2

    .line 210
    move-object p2, p1

    .line 211
    goto :goto_1

    .line 212
    :goto_5
    if-eqz p1, :cond_9

    .line 213
    .line 214
    :try_start_8
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :catchall_5
    move-exception p1

    .line 219
    move-object p2, v0

    .line 220
    goto :goto_7

    .line 221
    :cond_9
    :goto_6
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 222
    :goto_7
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 223
    :catchall_6
    move-exception v0

    .line 224
    :try_start_a
    invoke-static {v1, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 228
    :catchall_7
    move-exception p1

    .line 229
    :goto_8
    invoke-interface {p2, v6}, Lce/a;->d(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    throw p1
.end method

.method public b(Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    instance-of v3, v0, Lj0/x$g;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lj0/x$g;

    .line 13
    .line 14
    iget v4, v3, Lj0/x$g;->g:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lj0/x$g;->g:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lj0/x$g;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Lj0/x$g;-><init>(Lj0/x;Lad/e;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v3, Lj0/x$g;->e:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lj0/x$g;->g:I

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x1

    .line 41
    const/4 v8, 0x0

    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    if-eq v5, v7, :cond_2

    .line 45
    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    iget-boolean v2, v3, Lj0/x$g;->d:Z

    .line 49
    .line 50
    iget-object v4, v3, Lj0/x$g;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Ljava/nio/channels/FileLock;

    .line 53
    .line 54
    iget-object v5, v3, Lj0/x$g;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Ljava/io/Closeable;

    .line 57
    .line 58
    iget-object v3, v3, Lj0/x$g;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Lce/a;

    .line 61
    .line 62
    :try_start_0
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    iget-boolean v2, v3, Lj0/x$g;->d:Z

    .line 79
    .line 80
    iget-object v3, v3, Lj0/x$g;->a:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lce/a;

    .line 83
    .line 84
    :try_start_1
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    goto/16 :goto_b

    .line 90
    .line 91
    :cond_3
    invoke-static {v0}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v5, v1, Lj0/x;->g:Lce/a;

    .line 95
    .line 96
    invoke-interface {v5, v8}, Lce/a;->a(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/4 v10, 0x0

    .line 101
    if-nez v9, :cond_6

    .line 102
    .line 103
    :try_start_2
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v5, v3, Lj0/x$g;->a:Ljava/lang/Object;

    .line 108
    .line 109
    iput-boolean v9, v3, Lj0/x$g;->d:Z

    .line 110
    .line 111
    iput v7, v3, Lj0/x$g;->g:I

    .line 112
    .line 113
    invoke-interface {v2, v0, v3}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 117
    if-ne v0, v4, :cond_4

    .line 118
    .line 119
    return-object v4

    .line 120
    :cond_4
    move-object v3, v5

    .line 121
    move v2, v9

    .line 122
    :goto_1
    if-eqz v2, :cond_5

    .line 123
    .line 124
    invoke-interface {v3, v8}, Lce/a;->d(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-object v0

    .line 128
    :cond_6
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    .line 129
    .line 130
    invoke-direct/range {p0 .. p0}, Lj0/x;->q()Ljava/io/File;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 135
    .line 136
    .line 137
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    const-wide/16 v13, 0x0

    .line 142
    .line 143
    const-wide v15, 0x7fffffffffffffffL

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    const/16 v17, 0x1

    .line 149
    .line 150
    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    .line 151
    .line 152
    .line 153
    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    move-object v12, v0

    .line 155
    goto :goto_5

    .line 156
    :catchall_2
    move-exception v0

    .line 157
    move-object v3, v5

    .line 158
    move-object v4, v8

    .line 159
    move v2, v9

    .line 160
    move-object v5, v11

    .line 161
    goto/16 :goto_8

    .line 162
    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    if-eqz v12, :cond_7

    .line 169
    .line 170
    iget-object v13, v1, Lj0/x;->f:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v12, v13, v10, v6, v8}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    if-ne v12, v7, :cond_7

    .line 177
    .line 178
    move v12, v7

    .line 179
    goto :goto_2

    .line 180
    :cond_7
    move v12, v10

    .line 181
    :goto_2
    if-nez v12, :cond_a

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    if-eqz v12, :cond_8

    .line 188
    .line 189
    sget-object v13, Lj0/x;->k:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v12, v13, v10, v6, v8}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    if-ne v12, v7, :cond_8

    .line 196
    .line 197
    move v12, v7

    .line 198
    goto :goto_3

    .line 199
    :cond_8
    move v12, v10

    .line 200
    :goto_3
    if-eqz v12, :cond_9

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 204
    :cond_a
    :goto_4
    move-object v12, v8

    .line 205
    :goto_5
    if-eqz v12, :cond_b

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_b
    move v7, v10

    .line 209
    :goto_6
    :try_start_6
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iput-object v5, v3, Lj0/x$g;->a:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v11, v3, Lj0/x$g;->b:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v12, v3, Lj0/x$g;->c:Ljava/lang/Object;

    .line 218
    .line 219
    iput-boolean v9, v3, Lj0/x$g;->d:Z

    .line 220
    .line 221
    iput v6, v3, Lj0/x$g;->g:I

    .line 222
    .line 223
    invoke-interface {v2, v0, v3}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 227
    if-ne v0, v4, :cond_c

    .line 228
    .line 229
    return-object v4

    .line 230
    :cond_c
    move-object v3, v5

    .line 231
    move v2, v9

    .line 232
    move-object v5, v11

    .line 233
    move-object v4, v12

    .line 234
    :goto_7
    if-eqz v4, :cond_d

    .line 235
    .line 236
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 237
    .line 238
    .line 239
    :cond_d
    :try_start_8
    invoke-static {v5, v8}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 240
    .line 241
    .line 242
    if-eqz v2, :cond_e

    .line 243
    .line 244
    invoke-interface {v3, v8}, Lce/a;->d(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_e
    return-object v0

    .line 248
    :catchall_3
    move-exception v0

    .line 249
    move-object v3, v5

    .line 250
    move v2, v9

    .line 251
    move-object v5, v11

    .line 252
    move-object v4, v12

    .line 253
    :goto_8
    if-eqz v4, :cond_f

    .line 254
    .line 255
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    .line 256
    .line 257
    .line 258
    goto :goto_9

    .line 259
    :catchall_4
    move-exception v0

    .line 260
    move-object v4, v0

    .line 261
    goto :goto_a

    .line 262
    :cond_f
    :goto_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 263
    :goto_a
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 264
    :catchall_5
    move-exception v0

    .line 265
    move-object v6, v0

    .line 266
    :try_start_b
    invoke-static {v5, v4}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 267
    .line 268
    .line 269
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 270
    :catchall_6
    move-exception v0

    .line 271
    move-object v3, v5

    .line 272
    move v2, v9

    .line 273
    :goto_b
    if-eqz v2, :cond_10

    .line 274
    .line 275
    invoke-interface {v3, v8}, Lce/a;->d(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_10
    throw v0
.end method

.method public c(Lad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lj0/x;->i:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lj0/x;->r()Lj0/f0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lj0/f0;->b()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lj0/x;->a:Lad/i;

    .line 23
    .line 24
    new-instance v1, Lj0/x$b;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2}, Lj0/x$b;-><init>(Lj0/x;Lad/e;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    return-object p1
.end method

.method public d()Lwd/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/x;->c:Lwd/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lj0/x;->i:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lj0/x;->r()Lj0/f0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lj0/f0;->c()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lj0/x;->a:Lad/i;

    .line 23
    .line 24
    new-instance v1, Lj0/x$c;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2}, Lj0/x$c;-><init>(Lj0/x;Lad/e;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    return-object p1
.end method
