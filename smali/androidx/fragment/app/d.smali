.class public final synthetic Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/f;

.field public final synthetic b:Landroidx/fragment/app/y0$d;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/f;Landroidx/fragment/app/y0$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iput-object p2, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/y0$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v1, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/y0$d;

    invoke-static {v0, v1}, Landroidx/fragment/app/f;->C(Landroidx/fragment/app/f;Landroidx/fragment/app/y0$d;)V

    return-void
.end method
