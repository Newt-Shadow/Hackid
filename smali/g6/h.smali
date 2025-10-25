.class final Lg6/h;
.super Ld6/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lm6/l;


# direct methods
.method constructor <init>(Lg6/b;Lm6/l;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lg6/h;->a:Lm6/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ld6/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i0(Ld6/b;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ld6/b;->d()Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lg6/h;->a:Lm6/l;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/common/api/b;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    const-string v3, "Got null status from location service"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->i()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lg6/h;->a:Lm6/l;

    .line 34
    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lg6/h;->a:Lm6/l;

    .line 42
    .line 43
    invoke-static {p1}, Ln5/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lm6/l;->d(Ljava/lang/Exception;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method
