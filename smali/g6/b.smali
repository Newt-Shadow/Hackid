.class public Lg6/b;
.super Lcom/google/android/gms/common/api/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lg6/d;->a:Lcom/google/android/gms/common/api/a;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/a$d;->i0:Lcom/google/android/gms/common/api/a$d$a;

    .line 4
    .line 5
    new-instance v2, Lm5/a;

    .line 6
    .line 7
    invoke-direct {v2}, Lm5/a;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lm5/s;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final E(Ld6/p;Lg6/LocationCallback;Landroid/os/Looper;Lg6/j;I)Lm6/Task;
    .locals 9

    .line 1
    invoke-static {p3}, Ld6/v;->a(Landroid/os/Looper;)Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const-class v0, Lg6/LocationCallback;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p2, p3, v0}, Lm5/k;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lm5/j;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    new-instance v0, Lg6/g;

    .line 16
    .line 17
    invoke-direct {v0, p0, p3}, Lg6/g;-><init>(Lg6/b;Lm5/j;)V

    .line 18
    .line 19
    .line 20
    new-instance v8, Lg6/f;

    .line 21
    .line 22
    move-object v1, v8

    .line 23
    move-object v2, p0

    .line 24
    move-object v3, v0

    .line 25
    move-object v4, p2

    .line 26
    move-object v5, p4

    .line 27
    move-object v6, p1

    .line 28
    move-object v7, p3

    .line 29
    invoke-direct/range {v1 .. v7}, Lg6/f;-><init>(Lg6/b;Lg6/l;Lg6/LocationCallback;Lg6/j;Ld6/p;Lm5/j;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lm5/p;->a()Lm5/p$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v8}, Lm5/p$a;->b(Lm5/q;)Lm5/p$a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Lm5/p$a;->d(Lm5/q;)Lm5/p$a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p3}, Lm5/p$a;->e(Lm5/j;)Lm5/p$a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p5}, Lm5/p$a;->c(I)Lm5/p$a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lm5/p$a;->a()Lm5/p;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->j(Lm5/p;)Lm6/Task;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method


# virtual methods
.method public A(Lg6/LocationCallback;)Lm6/Task;
    .locals 1

    .line 1
    const-class v0, Lg6/LocationCallback;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lm5/k;->b(Ljava/lang/Object;Ljava/lang/String;)Lm5/j$a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->k(Lm5/j$a;)Lm6/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lm5/v;->c(Lm6/Task;)Lm6/Task;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public B(Lcom/google/android/gms/location/LocationRequest;Lg6/LocationCallback;Landroid/os/Looper;)Lm6/Task;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ld6/p;->g(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Ld6/p;

    .line 3
    .line 4
    .line 5
    move-result-object v2

    .line 6
    const/4 v5, 0x0

    .line 7
    const/16 v6, 0x984

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    invoke-direct/range {v1 .. v6}, Lg6/b;->E(Ld6/p;Lg6/LocationCallback;Landroid/os/Looper;Lg6/j;I)Lm6/Task;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method final synthetic C(Lg6/l;Lg6/LocationCallback;Lg6/j;Ld6/p;Lm5/j;Ld6/n;Lm6/l;)V
    .locals 2

    .line 1
    new-instance v0, Lg6/i;

    .line 2
    .line 3
    new-instance v1, Lg6/x;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lg6/x;-><init>(Lg6/b;Lg6/l;Lg6/LocationCallback;Lg6/j;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p7, v1}, Lg6/i;-><init>(Lm6/l;Lg6/j;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->s()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p4, p1}, Ld6/p;->i(Ljava/lang/String;)Ld6/p;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p6, p4, p5, v0}, Ld6/n;->n0(Ld6/p;Lm5/j;Ld6/g;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method final synthetic D(Ld6/n;Lm6/l;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ld6/n;->p0(Ljava/lang/String;)Landroid/location/Location;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public z()Lm6/Task;
    .locals 2

    .line 1
    invoke-static {}, Lm5/u;->a()Lm5/u$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lg6/w;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lg6/w;-><init>(Lg6/b;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lm5/u$a;->b(Lm5/q;)Lm5/u$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x96e

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm5/u$a;->e(I)Lm5/u$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lm5/u$a;->a()Lm5/u;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/e;->i(Lm5/u;)Lm6/Task;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
