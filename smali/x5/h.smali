.class public final synthetic Lx5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx5/l;

.field public final synthetic b:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lx5/l;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/h;->a:Lx5/l;

    iput-object p2, p0, Lx5/h;->b:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx5/h;->a:Lx5/l;

    iget-object v1, p0, Lx5/h;->b:Lm6/l;

    invoke-virtual {v0, v1}, Lx5/l;->e(Lm6/l;)V

    return-void
.end method
