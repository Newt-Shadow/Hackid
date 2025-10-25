.class public final synthetic Ld3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld3/v$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ld3/v$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/q;->a:Ld3/v$a;

    iput-object p2, p0, Ld3/q;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/q;->a:Ld3/v$a;

    iget-object v1, p0, Ld3/q;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Ld3/v$a;->d(Ld3/v$a;Ljava/lang/Exception;)V

    return-void
.end method
