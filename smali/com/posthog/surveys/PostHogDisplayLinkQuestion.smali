.class public final Lcom/posthog/surveys/PostHogDisplayLinkQuestion;
.super Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.source "SourceFile"


# instance fields
.field private final link:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "question"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "questionDescriptionContentType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p6, p0, Lcom/posthog/surveys/PostHogDisplayLinkQuestion;->link:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/PostHogDisplayLinkQuestion;->link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
