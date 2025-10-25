.class public final synthetic Landroidx/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final synthetic a:Landroidx/activity/w;

.field public final synthetic b:Landroidx/activity/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/w;Landroidx/activity/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/d;->a:Landroidx/activity/w;

    iput-object p2, p0, Landroidx/activity/d;->b:Landroidx/activity/j;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;Landroidx/lifecycle/i$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/d;->a:Landroidx/activity/w;

    iget-object v1, p0, Landroidx/activity/d;->b:Landroidx/activity/j;

    invoke-static {v0, v1, p1, p2}, Landroidx/activity/j;->f(Landroidx/activity/w;Landroidx/activity/j;Landroidx/lifecycle/m;Landroidx/lifecycle/i$a;)V

    return-void
.end method
