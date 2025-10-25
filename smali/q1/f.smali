.class final Lq1/f;
.super Lq1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/f$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lq1/g;

.field private final f:Lq1/j;

.field private final g:Lq1/l;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lq1/g;Lq1/j;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tag"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "message"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "logger"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "verificationMode"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lq1/h;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lq1/f;->b:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object p2, p0, Lq1/f;->c:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p3, p0, Lq1/f;->d:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p4, p0, Lq1/f;->e:Lq1/g;

    .line 36
    .line 37
    iput-object p5, p0, Lq1/f;->f:Lq1/j;

    .line 38
    .line 39
    new-instance p2, Lq1/l;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p3}, Lq1/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Lq1/l;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p3, "stackTrace"

    .line 53
    .line 54
    invoke-static {p1, p3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p3, 0x2

    .line 58
    invoke-static {p1, p3}, Lyc/g;->s([Ljava/lang/Object;I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/util/Collection;

    .line 63
    .line 64
    const/4 p3, 0x0

    .line 65
    new-array p3, p3, [Ljava/lang/StackTraceElement;

    .line 66
    .line 67
    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lq1/f;->g:Lq1/l;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lq1/f;->f:Lq1/j;

    .line 2
    .line 3
    sget-object v1, Lq1/f$a;->a:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lxc/i;

    .line 22
    .line 23
    invoke-direct {v0}, Lxc/i;-><init>()V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    iget-object v0, p0, Lq1/f;->e:Lq1/g;

    .line 28
    .line 29
    iget-object v1, p0, Lq1/f;->c:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p0, Lq1/f;->b:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v3, p0, Lq1/f;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v2, v3}, Lq1/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Lq1/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 v0, 0x0

    .line 43
    return-object v0

    .line 44
    :cond_2
    iget-object v0, p0, Lq1/f;->g:Lq1/l;

    .line 45
    .line 46
    throw v0
.end method

.method public c(Ljava/lang/String;Lid/l;)Lq1/h;
    .locals 1

    .line 1
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "condition"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
