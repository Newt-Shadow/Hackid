.class public final synthetic Landroidx/activity/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/activity/j;

.field public final synthetic b:Landroidx/activity/w;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/j;Landroidx/activity/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/o;->a:Landroidx/activity/j;

    iput-object p2, p0, Landroidx/activity/o;->b:Landroidx/activity/w;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/o;->a:Landroidx/activity/j;

    iget-object v1, p0, Landroidx/activity/o;->b:Landroidx/activity/w;

    invoke-static {v0, v1}, Landroidx/activity/j$j;->a(Landroidx/activity/j;Landroidx/activity/w;)V

    return-void
.end method
