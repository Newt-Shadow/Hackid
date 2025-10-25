.class public final synthetic Llc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llc/d;


# direct methods
.method public synthetic constructor <init>(Llc/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc/b;->a:Llc/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Llc/b;->a:Llc/d;

    invoke-static {v0}, Llc/d;->a(Llc/d;)V

    return-void
.end method
