.class public final synthetic Lf3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf3/u$a;

.field public final synthetic b:Lf3/u;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lf3/u$a;Lf3/u;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/p;->a:Lf3/u$a;

    iput-object p2, p0, Lf3/p;->b:Lf3/u;

    iput-object p3, p0, Lf3/p;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf3/p;->a:Lf3/u$a;

    iget-object v1, p0, Lf3/p;->b:Lf3/u;

    iget-object v2, p0, Lf3/p;->c:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lf3/u$a;->e(Lf3/u$a;Lf3/u;Ljava/lang/Exception;)V

    return-void
.end method
