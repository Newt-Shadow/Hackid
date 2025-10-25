.class public final synthetic Lq7/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq7/d0;

.field public final synthetic b:Ly7/j;


# direct methods
.method public synthetic constructor <init>(Lq7/d0;Ly7/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/a0;->a:Lq7/d0;

    iput-object p2, p0, Lq7/a0;->b:Ly7/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/a0;->a:Lq7/d0;

    iget-object v1, p0, Lq7/a0;->b:Ly7/j;

    invoke-static {v0, v1}, Lq7/d0;->i(Lq7/d0;Ly7/j;)V

    return-void
.end method
