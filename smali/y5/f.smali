.class public final Ly5/f;
.super Ln5/h;
.source "SourceFile"


# instance fields
.field private final I:Le5/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ln5/e;Le5/g;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)V
    .locals 7

    .line 1
    const/16 v3, 0x44

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Ln5/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILn5/e;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Le5/f;

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    sget-object p4, Le5/g;->d:Le5/g;

    .line 17
    .line 18
    :cond_0
    invoke-direct {p1, p4}, Le5/f;-><init>(Le5/g;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ly5/b;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Le5/f;->a(Ljava/lang/String;)Le5/f;

    .line 26
    .line 27
    .line 28
    new-instance p2, Le5/g;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Le5/g;-><init>(Le5/f;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Ly5/f;->I:Le5/g;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method protected final A()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Ly5/f;->I:Le5/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Le5/g;->a()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected final E()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method protected final F()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    const v0, 0xc35000

    return v0
.end method

.method protected final synthetic s(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Ly5/g;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object p1, v0

    .line 16
    check-cast p1, Ly5/g;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ly5/g;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ly5/g;-><init>(Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_0
    return-object p1
.end method
