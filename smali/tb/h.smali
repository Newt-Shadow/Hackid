.class public final synthetic Ltb/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ltb/i;


# direct methods
.method public synthetic constructor <init>(Ltb/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb/h;->a:Ltb/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltb/h;->a:Ltb/i;

    invoke-static {v0}, Ltb/i;->d(Ltb/i;)V

    return-void
.end method
