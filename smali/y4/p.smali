.class public final synthetic Ly4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic b:I

.field public final synthetic c:Ly4/q$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILy4/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/p;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Ly4/p;->b:I

    iput-object p3, p0, Ly4/p;->c:Ly4/q$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly4/p;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Ly4/p;->b:I

    iget-object v2, p0, Ly4/p;->c:Ly4/q$a;

    invoke-static {v0, v1, v2}, Ly4/q;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILy4/q$a;)V

    return-void
.end method
