.class public final Lz5/c;
.super Lf5/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf5/b;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lm6/Task;
    .locals 2

    .line 1
    invoke-static {}, Lm5/u;->a()Lm5/u$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lz5/l;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lz5/l;-><init>(Lz5/c;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lm5/u$a;->b(Lm5/q;)Lm5/u$a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lz5/d;->d:Ll5/d;

    .line 15
    .line 16
    filled-new-array {v0}, [Ll5/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lm5/u$a;->d([Ll5/d;)Lm5/u$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/16 v0, 0x620

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lm5/u$a;->e(I)Lm5/u$a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lm5/u$a;->a()Lm5/u;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->n(Lm5/u;)Lm6/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public final z()Lm6/Task;
    .locals 2

    .line 1
    invoke-static {}, Lm5/u;->a()Lm5/u$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lz5/k;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lz5/k;-><init>(Lz5/c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lm5/u$a;->b(Lm5/q;)Lm5/u$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lz5/d;->c:Ll5/d;

    .line 15
    .line 16
    filled-new-array {v1}, [Ll5/d;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lm5/u$a;->d([Ll5/d;)Lm5/u$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/16 v1, 0x61f

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lm5/u$a;->e(I)Lm5/u$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lm5/u$a;->a()Lm5/u;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/e;->n(Lm5/u;)Lm6/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
