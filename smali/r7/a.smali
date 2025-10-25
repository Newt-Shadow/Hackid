.class public final synthetic Lr7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/c;


# instance fields
.field public final synthetic a:Lm6/l;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lm6/b;


# direct methods
.method public synthetic constructor <init>(Lm6/l;Ljava/util/concurrent/atomic/AtomicBoolean;Lm6/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/a;->a:Lm6/l;

    iput-object p2, p0, Lr7/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lr7/a;->c:Lm6/b;

    return-void
.end method


# virtual methods
.method public final a(Lm6/Task;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lr7/a;->a:Lm6/l;

    iget-object v1, p0, Lr7/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lr7/a;->c:Lm6/b;

    invoke-static {v0, v1, v2, p1}, Lr7/b;->a(Lm6/l;Ljava/util/concurrent/atomic/AtomicBoolean;Lm6/b;Lm6/Task;)Lm6/Task;

    move-result-object p1

    return-object p1
.end method
