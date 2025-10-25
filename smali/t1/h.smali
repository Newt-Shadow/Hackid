.class public final synthetic Lt1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a;


# instance fields
.field public final synthetic a:Lvd/v;


# direct methods
.method public synthetic constructor <init>(Lvd/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/h;->a:Lvd/v;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt1/h;->a:Lvd/v;

    check-cast p1, Lt1/j;

    invoke-static {v0, p1}, Lt1/i$a;->a(Lvd/v;Lt1/j;)V

    return-void
.end method
