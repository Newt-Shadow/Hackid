.class public final synthetic Ld3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld3/v$a;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ld3/v$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/t;->a:Ld3/v$a;

    iput-boolean p2, p0, Ld3/t;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/t;->a:Ld3/v$a;

    iget-boolean v1, p0, Ld3/t;->b:Z

    invoke-static {v0, v1}, Ld3/v$a;->a(Ld3/v$a;Z)V

    return-void
.end method
