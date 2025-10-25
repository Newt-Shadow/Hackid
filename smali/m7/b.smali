.class public final synthetic Lm7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/a;


# instance fields
.field public final synthetic a:Lm7/d;


# direct methods
.method public synthetic constructor <init>(Lm7/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/b;->a:Lm7/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm7/b;->a:Lm7/d;

    invoke-static {v0, p1, p2}, Lm7/d;->b(Lm7/d;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
