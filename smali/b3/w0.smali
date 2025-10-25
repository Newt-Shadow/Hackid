.class public final synthetic Lb3/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb3/g1;

.field public final synthetic b:Lb3/t1$e;


# direct methods
.method public synthetic constructor <init>(Lb3/g1;Lb3/t1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/w0;->a:Lb3/g1;

    iput-object p2, p0, Lb3/w0;->b:Lb3/t1$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/w0;->a:Lb3/g1;

    iget-object v1, p0, Lb3/w0;->b:Lb3/t1$e;

    invoke-static {v0, v1}, Lb3/g1;->k0(Lb3/g1;Lb3/t1$e;)V

    return-void
.end method
