.class public final synthetic Landroidx/fragment/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/t0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/t0;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/t0;

    iput-object p2, p0, Landroidx/fragment/app/k;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/k;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/t0;

    iget-object v1, p0, Landroidx/fragment/app/k;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/k;->c:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/f$g;->i(Landroidx/fragment/app/t0;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
