.class public final synthetic Landroidx/fragment/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/d$c;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/u;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/u;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/u;

    invoke-static {v0}, Landroidx/fragment/app/u;->t(Landroidx/fragment/app/u;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
