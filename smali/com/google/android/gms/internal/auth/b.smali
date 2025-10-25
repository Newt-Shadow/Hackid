.class final Lcom/google/android/gms/internal/auth/b;
.super Lcom/google/android/gms/common/api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/b3;


# static fields
.field private static final l:Lcom/google/android/gms/common/api/a$g;

.field private static final m:Lcom/google/android/gms/common/api/a$a;

.field private static final n:Lcom/google/android/gms/common/api/a;

.field private static final o:Lq5/a;


# instance fields
.field private final k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/auth/b;->l:Lcom/google/android/gms/common/api/a$g;

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/auth/v4;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/internal/auth/v4;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/android/gms/internal/auth/b;->m:Lcom/google/android/gms/common/api/a$a;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/common/api/a;

    .line 16
    .line 17
    const-string v3, "GoogleAuthService.API"

    .line 18
    .line 19
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lcom/google/android/gms/internal/auth/b;->n:Lcom/google/android/gms/common/api/a;

    .line 23
    .line 24
    const-string v0, "GoogleAuthServiceClient"

    .line 25
    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ld5/d;->a([Ljava/lang/String;)Lq5/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/google/android/gms/internal/auth/b;->o:Lq5/a;

    .line 35
    .line 36
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/b;->n:Lcom/google/android/gms/common/api/a;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/a$d;->i0:Lcom/google/android/gms/common/api/a$d$a;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/common/api/e$a;->c:Lcom/google/android/gms/common/api/e$a;

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/e$a;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/b;->k:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method static bridge synthetic z(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lm5/v;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lm6/l;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/google/android/gms/internal/auth/b;->o:Lq5/a;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string p2, "The task is already complete."

    .line 13
    .line 14
    invoke-virtual {p0, p2, p1}, Lq5/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lm6/Task;
    .locals 2

    .line 1
    const-string v0, "Account name cannot be null!"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "Scope cannot be null!"

    .line 7
    .line 8
    invoke-static {p2, v0}, Ln5/q;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lm5/u;->a()Lm5/u$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ld5/e;->l:Ll5/d;

    .line 16
    .line 17
    filled-new-array {v1}, [Ll5/d;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lm5/u$a;->d([Ll5/d;)Lm5/u$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/google/android/gms/internal/auth/t4;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/t4;-><init>(Lcom/google/android/gms/internal/auth/b;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lm5/u$a;->b(Lm5/q;)Lm5/u$a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/16 p2, 0x5e8

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lm5/u$a;->e(I)Lm5/u$a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lm5/u$a;->a()Lm5/u;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/e;->n(Lm5/u;)Lm6/Task;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public final d(Lcom/google/android/gms/internal/auth/g;)Lm6/Task;
    .locals 2

    .line 1
    invoke-static {}, Lm5/u;->a()Lm5/u$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ld5/e;->l:Ll5/d;

    .line 6
    .line 7
    filled-new-array {v1}, [Ll5/d;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lm5/u$a;->d([Ll5/d;)Lm5/u$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/auth/u4;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth/u4;-><init>(Lcom/google/android/gms/internal/auth/b;Lcom/google/android/gms/internal/auth/g;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lm5/u$a;->b(Lm5/q;)Lm5/u$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/16 v0, 0x5e9

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
