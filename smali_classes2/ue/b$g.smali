.class final Lue/b$g;
.super Lue/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field private d:Z

.field final synthetic e:Lue/b;


# direct methods
.method public constructor <init>(Lue/b;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lue/b$g;->e:Lue/b;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lue/b$a;-><init>(Lue/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public L0(Laf/d;J)J
    .locals 4

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Lue/b$a;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    xor-int/2addr v0, v1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-boolean v0, p0, Lue/b$g;->d:Z

    .line 26
    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return-wide v2

    .line 32
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lue/b$a;->L0(Laf/d;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    cmp-long p3, p1, v2

    .line 37
    .line 38
    if-nez p3, :cond_2

    .line 39
    .line 40
    iput-boolean v1, p0, Lue/b$g;->d:Z

    .line 41
    .line 42
    invoke-virtual {p0}, Lue/b$a;->b()V

    .line 43
    .line 44
    .line 45
    return-wide v2

    .line 46
    :cond_2
    return-wide p1

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "closed"

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_4
    const-string p1, "byteCount < 0: "

    .line 60
    .line 61
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p2
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lue/b$a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lue/b$g;->d:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lue/b$a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lue/b$a;->c(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
