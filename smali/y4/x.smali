.class public final synthetic Ly4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly4/y;

.field public final synthetic b:Ly4/y$c;


# direct methods
.method public synthetic constructor <init>(Ly4/y;Ly4/y$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/x;->a:Ly4/y;

    iput-object p2, p0, Ly4/x;->b:Ly4/y$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly4/x;->a:Ly4/y;

    iget-object v1, p0, Ly4/x;->b:Ly4/y$c;

    invoke-static {v0, v1}, Ly4/y;->a(Ly4/y;Ly4/y$c;)V

    return-void
.end method
