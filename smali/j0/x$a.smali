.class public final Lj0/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj0/x$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lj0/x$a;Ljava/io/FileOutputStream;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/x$a;->b(Ljava/io/FileOutputStream;Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b(Ljava/io/FileOutputStream;Lad/e;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p2, Lj0/x$a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/x$a$a;

    .line 7
    .line 8
    iget v1, v0, Lj0/x$a$a;->e:I

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
    iput v1, v0, Lj0/x$a$a;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/x$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/x$a$a;-><init>(Lj0/x$a;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/x$a$a;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/x$a$a;->e:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-wide v5, v0, Lj0/x$a$a;->b:J

    .line 40
    .line 41
    iget-object p1, v0, Lj0/x$a$a;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Ljava/io/FileOutputStream;

    .line 44
    .line 45
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lj0/x;->i()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    :goto_1
    invoke-static {}, Lj0/x;->k()J

    .line 65
    .line 66
    .line 67
    move-result-wide v7

    .line 68
    cmp-long p2, v5, v7

    .line 69
    .line 70
    const-string v2, "lockFileStream.getChanne\u2026LUE, /* shared= */ false)"

    .line 71
    .line 72
    if-gtz p2, :cond_6

    .line 73
    .line 74
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const-wide/16 v8, 0x0

    .line 79
    .line 80
    const-wide v10, 0x7fffffffffffffffL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p2, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return-object p2

    .line 94
    :catch_0
    move-exception p2

    .line 95
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const/4 v7, 0x0

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-static {}, Lj0/x;->h()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const/4 v9, 0x0

    .line 107
    invoke-static {v2, v8, v7, v3, v9}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-ne v2, v4, :cond_3

    .line 112
    .line 113
    move v7, v4

    .line 114
    :cond_3
    if-eqz v7, :cond_5

    .line 115
    .line 116
    iput-object p1, v0, Lj0/x$a$a;->a:Ljava/lang/Object;

    .line 117
    .line 118
    iput-wide v5, v0, Lj0/x$a$a;->b:J

    .line 119
    .line 120
    iput v4, v0, Lj0/x$a$a;->e:I

    .line 121
    .line 122
    invoke-static {v5, v6, v0}, Ltd/v0;->a(JLad/e;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-ne p2, v1, :cond_4

    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_4
    :goto_2
    int-to-long v7, v3

    .line 130
    mul-long/2addr v5, v7

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    throw p2

    .line 133
    :cond_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    const-wide/16 v8, 0x0

    .line 138
    .line 139
    const-wide v10, 0x7fffffffffffffffL

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    const/4 v12, 0x0

    .line 145
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object p1
.end method
