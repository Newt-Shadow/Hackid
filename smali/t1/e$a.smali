.class final Lt1/e$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/e;->k()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lt1/e;


# direct methods
.method constructor <init>(Lt1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt1/e$a;->e:Lt1/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Boolean;
    .locals 6

    .line 1
    iget-object v0, p0, Lt1/e$a;->e:Lt1/e;

    .line 2
    .line 3
    invoke-static {v0}, Lt1/e;->b(Lt1/e;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Class;

    .line 9
    .line 10
    const-string v3, "getBounds"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "getType"

    .line 17
    .line 18
    new-array v4, v1, [Ljava/lang/Class;

    .line 19
    .line 20
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "getState"

    .line 25
    .line 26
    new-array v5, v1, [Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v4, Ly1/a;->a:Ly1/a;

    .line 33
    .line 34
    const-string v5, "getBoundsMethod"

    .line 35
    .line 36
    invoke-static {v2, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-class v5, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-static {v5}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lpd/c;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v2, v5}, Ly1/a;->c(Ljava/lang/reflect/Method;Lpd/c;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ly1/a;->d(Ljava/lang/reflect/Method;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    const-string v2, "getTypeMethod"

    .line 58
    .line 59
    invoke-static {v3, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lpd/c;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v3, v5}, Ly1/a;->c(Ljava/lang/reflect/Method;Lpd/c;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    invoke-virtual {v4, v3}, Ly1/a;->d(Ljava/lang/reflect/Method;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_0

    .line 79
    .line 80
    const-string v3, "getStateMethod"

    .line 81
    .line 82
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lpd/c;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v4, v0, v2}, Ly1/a;->c(Ljava/lang/reflect/Method;Lpd/c;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_0

    .line 94
    .line 95
    invoke-virtual {v4, v0}, Ly1/a;->d(Ljava/lang/reflect/Method;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt1/e$a;->b()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
