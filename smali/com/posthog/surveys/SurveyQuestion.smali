.class public Lcom/posthog/surveys/SurveyQuestion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final branching:Lcom/posthog/surveys/SurveyQuestionBranching;

.field private final buttonText:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final descriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

.field private final id:Ljava/lang/String;

.field private final optional:Ljava/lang/Boolean;

.field private final question:Ljava/lang/String;

.field private final type:Lcom/posthog/surveys/SurveyQuestionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBranching()Lcom/posthog/surveys/SurveyQuestionBranching;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestion;->branching:Lcom/posthog/surveys/SurveyQuestionBranching;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestion;->buttonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestion;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescriptionContentType()Lcom/posthog/surveys/SurveyTextContentType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestion;->descriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestion;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOptional()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestion;->optional:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuestion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestion;->question:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lcom/posthog/surveys/SurveyQuestionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/surveys/SurveyQuestion;->type:Lcom/posthog/surveys/SurveyQuestionType;

    .line 2
    .line 3
    return-object v0
.end method
