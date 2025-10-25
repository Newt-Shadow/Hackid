.class public interface abstract Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a$b;,
        Lb/a$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


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
    const-string v2, "android$support$customtabs$ICustomTabsCallback"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lb/a;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract E0(Landroid/os/Bundle;)V
.end method

.method public abstract I0(ILandroid/os/Bundle;)V
.end method

.method public abstract M(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract S0(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract W0(Landroid/os/Bundle;)V
.end method

.method public abstract Y(Landroid/os/Bundle;)V
.end method

.method public abstract Y0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end method

.method public abstract c0(Landroid/os/Bundle;)V
.end method

.method public abstract n0(IILandroid/os/Bundle;)V
.end method

.method public abstract z(IIIIILandroid/os/Bundle;)V
.end method

.method public abstract z0(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
