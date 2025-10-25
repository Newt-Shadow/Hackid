.class public final synthetic Lx5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/c;


# instance fields
.field public final synthetic a:Lx5/r;


# direct methods
.method public synthetic constructor <init>(Lx5/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/q;->a:Lx5/r;

    return-void
.end method


# virtual methods
.method public final a(Lm6/Task;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lx5/q;->a:Lx5/r;

    invoke-static {v0, p1}, Lx5/r;->b(Lx5/r;Lm6/Task;)Lm6/Task;

    move-result-object p1

    return-object p1
.end method
