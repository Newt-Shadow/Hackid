.class public final synthetic Lk7/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk7/c0;

.field public final synthetic b:Lk8/b;


# direct methods
.method public synthetic constructor <init>(Lk7/c0;Lk8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/l;->a:Lk7/c0;

    iput-object p2, p0, Lk7/l;->b:Lk8/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/l;->a:Lk7/c0;

    iget-object v1, p0, Lk7/l;->b:Lk8/b;

    invoke-static {v0, v1}, Lk7/n;->k(Lk7/c0;Lk8/b;)V

    return-void
.end method
