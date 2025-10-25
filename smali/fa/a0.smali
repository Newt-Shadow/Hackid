.class public final synthetic Lfa/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/q0;


# instance fields
.field public final synthetic a:Lfa/b0;


# direct methods
.method public synthetic constructor <init>(Lfa/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/a0;->a:Lfa/b0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/Image;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/a0;->a:Lfa/b0;

    invoke-static {v0, p1}, Lfa/b0;->b(Lfa/b0;Landroid/media/Image;)V

    return-void
.end method
