.class public final synthetic Landroidx/fragment/app/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/d$c;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/i0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    invoke-static {v0}, Landroidx/fragment/app/i0;->e(Landroidx/fragment/app/i0;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
