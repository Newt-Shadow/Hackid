.class final Lcom/google/android/gms/measurement/internal/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ae;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/pd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;Lcom/google/android/gms/measurement/internal/ae;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/ae;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hd;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/ae;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hd;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/pd;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v3, Li6/s;->c:Li6/s;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ae;->s:Ljava/lang/String;

    .line 26
    .line 27
    const/16 v4, 0x64

    .line 28
    .line 29
    invoke-static {v1, v4}, Lcom/google/android/gms/measurement/internal/d8;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/d8;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/pd;->o0(Lcom/google/android/gms/measurement/internal/ae;)Lcom/google/android/gms/measurement/internal/v5;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v5;->p0()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/pd;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_1
    return-object v0
.end method
