.class public final synthetic Lib/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lib/i;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lib/i;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib/h;->a:Lib/i;

    iput-object p2, p0, Lib/h;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lib/h;->a:Lib/i;

    iget-object v1, p0, Lib/h;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lib/i;->a(Lib/i;Ljava/lang/Runnable;)V

    return-void
.end method
