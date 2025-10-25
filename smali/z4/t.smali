.class public final synthetic Lz4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz4/y$a;

.field public final synthetic b:Lb3/x1;

.field public final synthetic c:Le3/i;


# direct methods
.method public synthetic constructor <init>(Lz4/y$a;Lb3/x1;Le3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/t;->a:Lz4/y$a;

    iput-object p2, p0, Lz4/t;->b:Lb3/x1;

    iput-object p3, p0, Lz4/t;->c:Le3/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz4/t;->a:Lz4/y$a;

    iget-object v1, p0, Lz4/t;->b:Lb3/x1;

    iget-object v2, p0, Lz4/t;->c:Le3/i;

    invoke-static {v0, v1, v2}, Lz4/y$a;->i(Lz4/y$a;Lb3/x1;Le3/i;)V

    return-void
.end method
