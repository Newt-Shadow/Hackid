.class public final synthetic Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/y0$d;

.field public final synthetic b:Landroidx/fragment/app/y0$d;

.field public final synthetic c:Landroidx/fragment/app/f$g;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/y0$d;Landroidx/fragment/app/y0$d;Landroidx/fragment/app/f$g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/y0$d;

    iput-object p2, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/y0$d;

    iput-object p3, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/f$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/y0$d;

    iget-object v1, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/y0$d;

    iget-object v2, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/f$g;

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/f$g;->k(Landroidx/fragment/app/y0$d;Landroidx/fragment/app/y0$d;Landroidx/fragment/app/f$g;)V

    return-void
.end method
