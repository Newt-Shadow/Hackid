.class public final synthetic Lca/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lca/c;


# direct methods
.method public synthetic constructor <init>(Lca/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca/b;->a:Lca/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lca/b;->a:Lca/c;

    invoke-static {v0}, Lca/c;->d(Lca/c;)V

    return-void
.end method
