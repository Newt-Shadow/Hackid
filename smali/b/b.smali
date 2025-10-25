.class public interface abstract Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b$b;,
        Lb/b$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    const-string v2, "android$support$customtabs$ICustomTabsService"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lb/b;->c:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract A0(Lb/a;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public abstract B0(Lb/a;Landroid/os/Bundle;)Z
.end method

.method public abstract D0(Lb/a;Landroid/os/Bundle;)Z
.end method

.method public abstract P(Lb/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
.end method

.method public abstract V(J)Z
.end method

.method public abstract a0(Lb/a;)Z
.end method

.method public abstract d0(Lb/a;Landroid/os/IBinder;Landroid/os/Bundle;)Z
.end method

.method public abstract l0(Lb/a;Landroid/net/Uri;)Z
.end method

.method public abstract r(Lb/a;Landroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public abstract u0(Lb/a;Landroid/os/Bundle;)Z
.end method

.method public abstract x(Lb/a;Ljava/lang/String;Landroid/os/Bundle;)I
.end method
