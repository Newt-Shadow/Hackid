.class public interface abstract Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c$b;,
        Lb/c$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


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
    const-string v2, "android$support$customtabs$IEngagementSignalsCallback"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lb/c;->d:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
.end method

.method public abstract onSessionEnded(ZLandroid/os/Bundle;)V
.end method

.method public abstract onVerticalScrollEvent(ZLandroid/os/Bundle;)V
.end method
