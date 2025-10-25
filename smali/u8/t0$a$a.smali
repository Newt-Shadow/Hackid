.class final Lu8/t0$a$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/t0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lu8/t0;


# direct methods
.method constructor <init>(Lu8/t0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/t0$a$a;->d:Lu8/t0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lwd/e;Ljava/lang/Throwable;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lu8/t0$a$a;

    iget-object v1, p0, Lu8/t0$a$a;->d:Lu8/t0;

    invoke-direct {v0, v1, p3}, Lu8/t0$a$a;-><init>(Lu8/t0;Lad/e;)V

    iput-object p1, v0, Lu8/t0$a$a;->b:Ljava/lang/Object;

    iput-object p2, v0, Lu8/t0$a$a;->c:Ljava/lang/Object;

    sget-object p1, Lxc/t;->a:Lxc/t;

    invoke-virtual {v0, p1}, Lu8/t0$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwd/e;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lad/e;

    invoke-virtual {p0, p1, p2, p3}, Lu8/t0$a$a;->a(Lwd/e;Ljava/lang/Throwable;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lu8/t0$a$a;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lu8/t0$a$a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lwd/e;

    .line 30
    .line 31
    iget-object v1, p0, Lu8/t0$a$a;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Throwable;

    .line 34
    .line 35
    new-instance v9, Lu8/e0;

    .line 36
    .line 37
    iget-object v3, p0, Lu8/t0$a$a;->d:Lu8/t0;

    .line 38
    .line 39
    invoke-static {v3}, Lu8/t0;->g(Lu8/t0;)Lu8/n0;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v10, 0x0

    .line 44
    invoke-virtual {v3, v10}, Lu8/n0;->a(Lu8/h0;)Lu8/h0;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x4

    .line 51
    const/4 v8, 0x0

    .line 52
    move-object v3, v9

    .line 53
    invoke-direct/range {v3 .. v8}, Lu8/e0;-><init>(Lu8/h0;Lu8/v0;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "Init session datastore failed with exception message: "

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ". Emit fallback session "

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9}, Lu8/e0;->f()Lu8/h0;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lu8/h0;->b()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v3, "FirebaseSessions"

    .line 94
    .line 95
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iput-object v10, p0, Lu8/t0$a$a;->b:Ljava/lang/Object;

    .line 99
    .line 100
    iput v2, p0, Lu8/t0$a$a;->a:I

    .line 101
    .line 102
    invoke-interface {p1, v9, p0}, Lwd/e;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v0, :cond_2

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_2
    :goto_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 110
    .line 111
    return-object p1
.end method
