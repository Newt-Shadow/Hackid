.class public final synthetic Lb3/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb3/b4;


# direct methods
.method public synthetic constructor <init>(Lb3/b4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/c4;->a:Lb3/b4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/c4;->a:Lb3/b4;

    invoke-static {v0}, Lb3/b4$c;->a(Lb3/b4;)V

    return-void
.end method
