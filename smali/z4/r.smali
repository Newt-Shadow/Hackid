.class public final synthetic Lz4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz4/y$a;

.field public final synthetic b:Lz4/a0;


# direct methods
.method public synthetic constructor <init>(Lz4/y$a;Lz4/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/r;->a:Lz4/y$a;

    iput-object p2, p0, Lz4/r;->b:Lz4/a0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/r;->a:Lz4/y$a;

    iget-object v1, p0, Lz4/r;->b:Lz4/a0;

    invoke-static {v0, v1}, Lz4/y$a;->h(Lz4/y$a;Lz4/a0;)V

    return-void
.end method
