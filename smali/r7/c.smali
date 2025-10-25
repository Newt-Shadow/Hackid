.class public final synthetic Lr7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/c;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/c;->a:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a(Lm6/Task;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lr7/c;->a:Ljava/util/concurrent/Callable;

    invoke-static {v0, p1}, Lr7/e;->b(Ljava/util/concurrent/Callable;Lm6/Task;)Lm6/Task;

    move-result-object p1

    return-object p1
.end method
