.class public final synthetic Lw2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw2/v;


# direct methods
.method public synthetic constructor <init>(Lw2/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/t;->a:Lw2/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/t;->a:Lw2/v;

    invoke-static {v0}, Lw2/v;->b(Lw2/v;)V

    return-void
.end method
