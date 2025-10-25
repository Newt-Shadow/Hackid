.class public abstract Ld6/y;
.super Ln5/h;
.source "SourceFile"


# instance fields
.field private final I:Ljava/lang/String;

.field protected final J:Ld6/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;Ljava/lang/String;Ln5/e;)V
    .locals 7

    .line 1
    const/16 v3, 0x17

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p6

    .line 7
    move-object v5, p3

    .line 8
    move-object v6, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Ln5/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILn5/e;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ld6/x;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Ld6/x;-><init>(Ld6/y;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Ld6/y;->J:Ld6/t;

    .line 18
    .line 19
    iput-object p5, p0, Ld6/y;->I:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic m0(Ld6/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln5/c;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final A()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "client_name"

    .line 7
    .line 8
    iget-object v2, p0, Ld6/y;->I:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method protected final E()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected final F()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    const v0, 0xb2c988

    return v0
.end method

.method protected final bridge synthetic s(Landroid/os/IBinder;)Landroid/os/IInterface;
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
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Ld6/i;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object p1, v0

    .line 16
    check-cast p1, Ld6/i;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ld6/h;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ld6/h;-><init>(Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_0
    return-object p1
.end method

.method public final v()[Ll5/d;
    .locals 1

    .line 1
    sget-object v0, Lg6/v;->f:[Ll5/d;

    .line 2
    .line 3
    return-object v0
.end method
