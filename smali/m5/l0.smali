.class final Lm5/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ll5/b;

.field final synthetic b:Lm5/m0;


# direct methods
.method constructor <init>(Lm5/m0;Ll5/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/l0;->b:Lm5/m0;

    iput-object p2, p0, Lm5/l0;->a:Ll5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm5/l0;->b:Lm5/m0;

    .line 2
    .line 3
    iget-object v1, v0, Lm5/m0;->f:Lm5/e;

    .line 4
    .line 5
    invoke-static {v1}, Lm5/e;->z(Lm5/e;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0}, Lm5/m0;->f(Lm5/m0;)Lm5/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lm5/i0;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lm5/l0;->a:Ll5/b;

    .line 23
    .line 24
    invoke-virtual {v1}, Ll5/b;->n()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lm5/l0;->b:Lm5/m0;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-static {v1, v3}, Lm5/m0;->g(Lm5/m0;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lm5/l0;->b:Lm5/m0;

    .line 38
    .line 39
    invoke-static {v1}, Lm5/m0;->e(Lm5/m0;)Lcom/google/android/gms/common/api/a$f;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->o()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lm5/l0;->b:Lm5/m0;

    .line 50
    .line 51
    invoke-static {v0}, Lm5/m0;->h(Lm5/m0;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    :try_start_0
    iget-object v1, p0, Lm5/l0;->b:Lm5/m0;

    .line 56
    .line 57
    invoke-static {v1}, Lm5/m0;->e(Lm5/m0;)Lcom/google/android/gms/common/api/a$f;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v1}, Lm5/m0;->e(Lm5/m0;)Lcom/google/android/gms/common/api/a$f;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->b()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/common/api/a$f;->k(Ln5/k;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const-string v3, "GoogleApiManager"

    .line 75
    .line 76
    const-string v4, "Failed to get service from broker. "

    .line 77
    .line 78
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lm5/l0;->b:Lm5/m0;

    .line 82
    .line 83
    invoke-static {v1}, Lm5/m0;->e(Lm5/m0;)Lcom/google/android/gms/common/api/a$f;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v3, "Failed to get service from broker."

    .line 88
    .line 89
    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/a$f;->c(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Ll5/b;

    .line 93
    .line 94
    const/16 v3, 0xa

    .line 95
    .line 96
    invoke-direct {v1, v3}, Ll5/b;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Lm5/i0;->H(Ll5/b;Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    iget-object v1, p0, Lm5/l0;->a:Ll5/b;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lm5/i0;->H(Ll5/b;Ljava/lang/Exception;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
