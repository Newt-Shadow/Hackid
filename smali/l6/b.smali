.class public final synthetic Ll6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ll6/a;


# direct methods
.method public synthetic constructor <init>(Ll6/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/b;->a:Ll6/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll6/b;->a:Ll6/a;

    invoke-static {v0}, Ll6/a;->e(Ll6/a;)V

    return-void
.end method
