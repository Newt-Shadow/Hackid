.class public final Lse/c$b;
.super Laf/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field final synthetic g:Lse/c;


# direct methods
.method public constructor <init>(Lse/c;Laf/a1;J)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "delegate"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lse/c$b;->g:Lse/c;

    .line 12
    .line 13
    invoke-direct {p0, p2}, Laf/m;-><init>(Laf/a1;)V

    .line 14
    .line 15
    .line 16
    iput-wide p3, p0, Lse/c$b;->b:J

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lse/c$b;->d:Z

    .line 20
    .line 21
    const-wide/16 p1, 0x0

    .line 22
    .line 23
    cmp-long p1, p3, p1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lse/c$b;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public L0(Laf/d;J)J
    .locals 7

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lse/c$b;->f:Z

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Laf/m;->a()Laf/a1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1, p2, p3}, Laf/a1;->L0(Laf/d;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iget-boolean p3, p0, Lse/c$b;->d:Z

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    iput-boolean p3, p0, Lse/c$b;->d:Z

    .line 26
    .line 27
    iget-object p3, p0, Lse/c$b;->g:Lse/c;

    .line 28
    .line 29
    invoke-virtual {p3}, Lse/c;->i()Lne/q;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iget-object v0, p0, Lse/c$b;->g:Lse/c;

    .line 34
    .line 35
    invoke-virtual {v0}, Lse/c;->g()Lse/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p3, v0}, Lne/q;->v(Lne/e;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-wide/16 v0, -0x1

    .line 43
    .line 44
    cmp-long p3, p1, v0

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    if-nez p3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lse/c$b;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 50
    .line 51
    .line 52
    return-wide v0

    .line 53
    :cond_1
    iget-wide v3, p0, Lse/c$b;->c:J

    .line 54
    .line 55
    add-long/2addr v3, p1

    .line 56
    iget-wide v5, p0, Lse/c$b;->b:J

    .line 57
    .line 58
    cmp-long p3, v5, v0

    .line 59
    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    cmp-long p3, v3, v5

    .line 63
    .line 64
    if-gtz p3, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string p3, "expected "

    .line 75
    .line 76
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-wide v0, p0, Lse/c$b;->b:J

    .line 80
    .line 81
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p3, " bytes but received "

    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_3
    :goto_0
    iput-wide v3, p0, Lse/c$b;->c:J

    .line 101
    .line 102
    cmp-long p3, v3, v5

    .line 103
    .line 104
    if-nez p3, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Lse/c$b;->b(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    :cond_4
    return-wide p1

    .line 110
    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p0, p1}, Lse/c$b;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    throw p1

    .line 116
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string p2, "closed"

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method public final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lse/c$b;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lse/c$b;->e:Z

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lse/c$b;->d:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lse/c$b;->d:Z

    .line 17
    .line 18
    iget-object v0, p0, Lse/c$b;->g:Lse/c;

    .line 19
    .line 20
    invoke-virtual {v0}, Lse/c;->i()Lne/q;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lse/c$b;->g:Lse/c;

    .line 25
    .line 26
    invoke-virtual {v1}, Lse/c;->g()Lse/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lne/q;->v(Lne/e;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v2, p0, Lse/c$b;->g:Lse/c;

    .line 34
    .line 35
    iget-wide v3, p0, Lse/c$b;->c:J

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v7, p1

    .line 40
    invoke-virtual/range {v2 .. v7}, Lse/c;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lse/c$b;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lse/c$b;->f:Z

    .line 8
    .line 9
    :try_start_0
    invoke-super {p0}, Laf/m;->close()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lse/c$b;->b(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0, v0}, Lse/c$b;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    throw v0
.end method
