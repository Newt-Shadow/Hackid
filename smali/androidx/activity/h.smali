.class public final synthetic Landroidx/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/d$c;


# instance fields
.field public final synthetic a:Landroidx/activity/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/h;->a:Landroidx/activity/j;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->a:Landroidx/activity/j;

    invoke-static {v0}, Landroidx/activity/j;->d(Landroidx/activity/j;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
